module FA(input logic [3:0] a,b, input logic cin, output logic [3:0] s, output logic cout);
  logic [3:0] p,g;
  
  assign p = a ^ b;
  assign g = a & b;
  
  assign s = p ^ {cin,cin,cin,cin};
  assign cout = g[3] | (p[3] & cin);
endmodule

module RCA(input logic [31:0] a,b, input logic cin, output logic [31:0] s, output logic cout);
  logic [7:0] c;
  
  FA i1 (a[3:0], b[3:0], cin, s[3:0], c[0]);
  FA i2 (a[7:4], b[7:4], c[0], s[7:4], c[1]);
  FA i3 (a[11:8], b[11:8], c[1], s[11:8], c[2]);
  FA i4 (a[15:12], b[15:12], c[2], s[15:12], c[3]);
  FA i5 (a[19:16], b[19:16], c[3], s[19:16], c[4]);
  FA i6 (a[23:20], b[23:20], c[4], s[23:20], c[5]);
  FA i7 (a[27:24], b[27:24], c[5], s[27:24], c[6]);
  FA i8 (a[31:28], b[31:28], c[6], s[31:28], cout);
endmodule
