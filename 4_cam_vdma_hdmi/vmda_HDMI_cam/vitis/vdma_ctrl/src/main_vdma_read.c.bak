#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_cache.h"

//VDMA base address
#define XPAR_AXI_VDMA_0_BASEADDR 0x43000000U

//VDMA register offset address
#define MM2S_VDMACR     0x00 //Control register
#define MM2S_VDMACR_Reset 0x04 //Reset bit
#define MM2S_START_ADDRESS 0x5c //Start address
#define MM2S_FRMDLY_STRIDE 0x58 //Frame delay and stride
#define MM2S_HSIZE      0x54 //Horizontal size
#define MM2S_VSIZE      0x50 //Vertical size
#define MM2S_SR         0x34 //Status register

//Configuration parameters
#define VDMA_START_ADDR  0x10000000
#define VDMA_STRIDE      0x00000F00 //3840 bytes per row (1280*3)
#define VDMA_HSIZE       0x00000F00 //3840 bytes per row (1280*3)
#define VDMA_VSIZE       0x000002D0 //720 rows

// Fill DDR with color bar test pattern
void fill_color_bar(u32 base_addr, int width, int height) {
    volatile u8 *mem = (volatile u8 *)base_addr;
    int row, col;
    u32 pixel_offset;
    u8 r, g, b;

    printf("Writing color bars to DDR...\n");

    for (row = 0; row < height; row++) {
        for (col = 0; col < width; col++) {
            // Generate 8 color bars (each bar is 160 pixels wide)
            int bar = (col * 8) / width;
            switch(bar) {
                case 0: r=255; g=255; b=255; break; // White
                case 1: r=255; g=255; b=0;   break; // Yellow
                case 2: r=0;   g=255; b=255; break; // Cyan
                case 3: r=0;   g=255; b=0;   break; // Green
                case 4: r=255; g=0;   b=255; break; // Magenta
                case 5: r=255; g=0;   b=0;   break; // Red
                case 6: r=0;   g=0;   b=255; break; // Blue
                case 7: r=0;   g=0;   b=0;   break; // Black
                default: r=128; g=128; b=128; break;
            }

            // Calculate byte offset: pixel_index * 3
            pixel_offset = (u32)(row * width + col) * 3;

            // Write RGB bytes (packed, 3 bytes per pixel)
            mem[pixel_offset + 0] = r;
            mem[pixel_offset + 1] = g;
            mem[pixel_offset + 2] = b;
        }

        if (row % 100 == 0) {
            printf("Progress: %d/%d rows\n", row, height);
        }
    }
    printf("Color bar write complete!\n");
}

// Verify memory content
void verify_memory(u32 base_addr) {
    volatile u8 *mem = (volatile u8 *)base_addr;

    printf("\n=== Memory Verification ===\n");
    printf("Base address: 0x%08X\n\n", base_addr);

    printf("Expected color bars (each 160 pixels wide):\n");
    printf("  Pixels 0-159:   White  (255,255,255)\n");
    printf("  Pixels 160-319: Yellow (255,255,0)\n");
    printf("  Pixels 320-479: Cyan   (0,255,255)\n");
    printf("  Pixels 480-639: Green  (0,255,0)\n");
    printf("  Pixels 640-799: Magenta(255,0,255)\n");
    printf("  Pixels 800-959: Red    (255,0,0)\n");
    printf("  Pixels 960-1119:Blue   (0,0,255)\n");
    printf("  Pixels 1120-1279:Black (0,0,0)\n\n");

    printf("Actual memory content:\n");
    printf("Pixel 0   (White):   R=%3d G=%3d B=%3d\n", mem[0],    mem[1],    mem[2]);
    printf("Pixel 160 (Yellow):  R=%3d G=%3d B=%3d\n", mem[480],  mem[481],  mem[482]);
    printf("Pixel 320 (Cyan):    R=%3d G=%3d B=%3d\n", mem[960],  mem[961],  mem[962]);
    printf("Pixel 480 (Green):   R=%3d G=%3d B=%3d\n", mem[1440], mem[1441], mem[1442]);
    printf("Pixel 640 (Magenta): R=%3d G=%3d B=%3d\n", mem[1920], mem[1921], mem[1922]);
    printf("Pixel 800 (Red):     R=%3d G=%3d B=%3d\n", mem[2400], mem[2401], mem[2402]);
    printf("Pixel 960 (Blue):    R=%3d G=%3d B=%3d\n", mem[2880], mem[2881], mem[2882]);
    printf("Pixel 1120(Black):   R=%3d G=%3d B=%3d\n", mem[3360], mem[3361], mem[3362]);
}

int main() {
    printf("\n========================================\n");
    printf("VDMA HDMI Test - 8 Color Bars\n");
    printf("========================================\n\n");

    // Step 1: Reset VDMA
    printf("Step 1: Resetting VDMA...\n");
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR, MM2S_VDMACR_Reset);
    while((Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR) & MM2S_VDMACR_Reset) == MM2S_VDMACR_Reset);
    printf("VDMA reset complete.\n\n");

    // Step 2: Fill DDR with color bars
    printf("Step 2: Filling DDR with color bar pattern...\n");
    fill_color_bar(VDMA_START_ADDR, 1280, 720);

    // Step 3: Flush cache - CRITICAL!
    printf("\nStep 3: Flushing data cache...\n");
    Xil_DCacheFlush();
    printf("Cache flushed.\n\n");

    // Step 4: Verify memory
    printf("Step 4: Verifying memory content...\n");
    verify_memory(VDMA_START_ADDR);

    // Step 5: Configure VDMA (VSIZE must be written LAST!)
    printf("\nStep 5: Configuring VDMA...\n");

    // Enable VDMA controller first
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR, 0x00000001);

    // Set frame buffer parameters
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_START_ADDRESS, VDMA_START_ADDR);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_FRMDLY_STRIDE, VDMA_STRIDE);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_HSIZE,         VDMA_HSIZE);

    // Write VSIZE LAST to start VDMA transfer
    printf("Writing VSIZE to start VDMA...\n");
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VSIZE,         VDMA_VSIZE);

    printf("\nVDMA started!\n\n");

    // Step 6: Print status
    printf("Step 6: VDMA Register Status:\n");
    printf("  VDMACR:     0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR));
    printf("  START_ADDR: 0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_START_ADDRESS));
    printf("  STRIDE:     0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_FRMDLY_STRIDE));
    printf("  HSIZE:      0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_HSIZE));
    printf("  VSIZE:      0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VSIZE));
    printf("  STATUS:     0x%08X\n", Xil_In32(XPAR_AXI_VDMA_0_BASEADDR + MM2S_SR));

    printf("\n========================================\n");
    printf("VDMA running! HDMI should show 8 color bars.\n");
    printf("========================================\n\n");

    // Main loop - VDMA runs autonomously
    while(1) {
    }

    return 0;
}
