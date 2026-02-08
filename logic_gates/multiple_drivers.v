3. Multiple Drivers
Drive a single output y from two different inputs a and b using two separate continuous assignments. Observe the result when a and b differ.

Requirements:

Module Name: top_module
Inputs: a, b (1-bit each)
Outputs: y (1-bit)

### ⚠️ Important Note: Multiple Drivers on a Wire

In this example, the wire y is driven by two continuous assignments:

assign y = a; assign y = b;

🔍 What happens?

If both drivers set the same value → y takes that value.
If drivers set different values → simulator shows x (unknown).
In real hardware, this is electrical contention (two outputs fighting).
Can cause high current, heat, or even damage to devices.
✅ Best Practices for Real Designs

One driver per net in RTL.
If you need both signals:
Combine with logic → assign y = a & b; or assign y = a | b;
Use a multiplexer → assign y = sel ? a : b;
For shared buses:
Use tri-state (z) carefully with arbitration.
👉 Takeaway: In clean designs, each wire should have exactly one driver. Multiple drivers are for special cases only (like testbenches or controlled tri-state buses).
