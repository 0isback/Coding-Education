.class public final Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;
.super Ljava/lang/Object;
.source "TGALoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    }
.end annotation


# static fields
.field public static final RGBA8:I = 0x4

.field public static final TYPE_BLACKANDWHITE:I = 0x3

.field public static final TYPE_BLACKANDWHITE_RLE:I = 0xb

.field public static final TYPE_COLORMAPPED:I = 0x1

.field public static final TYPE_COLORMAPPED_RLE:I = 0x9

.field public static final TYPE_NO_IMAGE:I = 0x0

.field public static final TYPE_TRUECOLOR:I = 0x2

.field public static final TYPE_TRUECOLOR_RLE:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method private static flipEndian(S)S
    .locals 3
    .param p0, "signedShort"    # S

    .prologue
    .line 342
    const v1, 0xffff

    and-int v0, p0, v1

    .line 343
    .local v0, "input":I
    shl-int/lit8 v1, v0, 0x8

    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method private static getBitsAsByte([BII)B
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v7, 0x2

    .line 308
    div-int/lit8 v3, p1, 0x8

    .line 309
    .local v3, "offsetBytes":I
    rem-int/lit8 v2, p1, 0x8

    .line 310
    .local v2, "indexBits":I
    const/4 v4, 0x0

    .line 313
    .local v4, "rVal":I
    move v1, p2

    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 314
    aget-byte v0, p0, v3

    .line 315
    .local v0, "b":B
    const/4 v6, 0x7

    if-ne v2, v6, :cond_2

    const/4 v5, 0x1

    .line 316
    .local v5, "test":I
    :goto_1
    and-int v6, v0, v5

    if-eqz v6, :cond_1

    .line 317
    if-nez v1, :cond_3

    .line 318
    add-int/lit8 v4, v4, 0x1

    .line 323
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 324
    const/16 v6, 0x8

    if-ne v2, v6, :cond_0

    .line 325
    const/4 v2, 0x0

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v5    # "test":I
    :cond_2
    rsub-int/lit8 v6, v2, 0x6

    shl-int v5, v7, v6

    goto :goto_1

    .line 320
    .restart local v5    # "test":I
    :cond_3
    add-int/lit8 v6, v1, -0x1

    shl-int v6, v7, v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 330
    .end local v0    # "b":B
    .end local v5    # "test":I
    :cond_4
    int-to-byte v6, v4

    return v6
.end method

.method public static load(Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "flip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v21, 0x0

    .line 89
    .local v21, "flipH":Z
    new-instance v18, Ljava/io/DataInputStream;

    new-instance v39, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v18, "dis":Ljava/io/DataInputStream;
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v26

    .line 98
    .local v26, "idLength":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    .line 101
    .local v15, "colorMapType":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v28

    .line 106
    .local v28, "imageType":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    .line 108
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v39

    invoke-static/range {v39 .. v39}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->flipEndian(S)S

    move-result v14

    .line 110
    .local v14, "cMapLength":S
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    .line 115
    .local v12, "cMapDepth":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    .line 118
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    .line 120
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v39

    invoke-static/range {v39 .. v39}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->flipEndian(S)S

    move-result v38

    .line 122
    .local v38, "width":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v39

    invoke-static/range {v39 .. v39}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->flipEndian(S)S

    move-result v24

    .line 124
    .local v24, "height":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v32

    .line 125
    .local v32, "pixelDepth":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v27

    .line 126
    .local v27, "imageDescriptor":I
    and-int/lit8 v39, v27, 0x20

    if-eqz v39, :cond_0

    .line 128
    if-nez p1, :cond_4

    const/16 p1, 0x1

    .line 130
    :cond_0
    :goto_0
    and-int/lit8 v39, v27, 0x10

    if-eqz v39, :cond_1

    .line 132
    if-nez v21, :cond_5

    const/16 v21, 0x1

    .line 138
    :cond_1
    :goto_1
    if-lez v26, :cond_2

    .line 139
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 142
    :cond_2
    const/4 v13, 0x0

    .line 143
    .local v13, "cMapEntries":[Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    if-eqz v15, :cond_7

    .line 145
    mul-int v39, v12, v14

    shr-int/lit8 v9, v39, 0x3

    .line 146
    .local v9, "bytesInColorMap":I
    div-int/lit8 v39, v12, 0x3

    const/16 v40, 0x8

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 148
    .local v7, "bitsPerColor":I
    new-array v11, v9, [B

    .line 149
    .local v11, "cMapData":[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 153
    const/16 v39, 0x1

    move/from16 v0, v28

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    const/16 v39, 0x9

    move/from16 v0, v28

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 154
    :cond_3
    new-array v13, v14, [Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;

    .line 155
    mul-int/lit8 v39, v7, 0x3

    sub-int v6, v12, v39

    .line 156
    .local v6, "alphaSize":I
    const/high16 v39, 0x437f0000    # 255.0f

    const/16 v40, 0x1

    shl-int v40, v40, v7

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v37, v39, v40

    .line 157
    .local v37, "scalar":F
    const/high16 v39, 0x437f0000    # 255.0f

    const/16 v40, 0x1

    shl-int v40, v40, v6

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v5, v39, v40

    .line 158
    .local v5, "alphaScalar":F
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v25

    if-ge v0, v14, :cond_7

    .line 159
    new-instance v20, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;

    invoke-direct/range {v20 .. v20}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;-><init>()V

    .line 160
    .local v20, "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    mul-int v31, v12, v25

    .line 161
    .local v31, "offset":I
    move/from16 v0, v31

    invoke-static {v11, v0, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->getBitsAsByte([BII)B

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v37

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v20

    iput-byte v0, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->red:B

    .line 162
    add-int v39, v31, v7

    move/from16 v0, v39

    invoke-static {v11, v0, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->getBitsAsByte([BII)B

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v37

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v20

    iput-byte v0, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->green:B

    .line 163
    mul-int/lit8 v39, v7, 0x2

    add-int v39, v39, v31

    move/from16 v0, v39

    invoke-static {v11, v0, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->getBitsAsByte([BII)B

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v37

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v20

    iput-byte v0, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->blue:B

    .line 164
    if-gtz v6, :cond_6

    .line 165
    const/16 v39, -0x1

    move/from16 v0, v39

    move-object/from16 v1, v20

    iput-byte v0, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->alpha:B

    .line 170
    :goto_3
    aput-object v20, v13, v25

    .line 158
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 128
    .end local v5    # "alphaScalar":F
    .end local v6    # "alphaSize":I
    .end local v7    # "bitsPerColor":I
    .end local v9    # "bytesInColorMap":I
    .end local v11    # "cMapData":[B
    .end local v13    # "cMapEntries":[Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .end local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .end local v25    # "i":I
    .end local v31    # "offset":I
    .end local v37    # "scalar":F
    :cond_4
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 132
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 167
    .restart local v5    # "alphaScalar":F
    .restart local v6    # "alphaSize":I
    .restart local v7    # "bitsPerColor":I
    .restart local v9    # "bytesInColorMap":I
    .restart local v11    # "cMapData":[B
    .restart local v13    # "cMapEntries":[Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .restart local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .restart local v25    # "i":I
    .restart local v31    # "offset":I
    .restart local v37    # "scalar":F
    :cond_6
    mul-int/lit8 v39, v7, 0x3

    add-int v39, v39, v31

    move/from16 v0, v39

    invoke-static {v11, v0, v6}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->getBitsAsByte([BII)B

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v5

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v20

    iput-byte v0, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->alpha:B

    goto :goto_3

    .line 178
    .end local v5    # "alphaScalar":F
    .end local v6    # "alphaSize":I
    .end local v7    # "bitsPerColor":I
    .end local v9    # "bytesInColorMap":I
    .end local v11    # "cMapData":[B
    .end local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .end local v25    # "i":I
    .end local v31    # "offset":I
    .end local v37    # "scalar":F
    :cond_7
    const/16 v33, 0x0

    .line 180
    .local v33, "rawData":[I
    const/16 v39, 0x20

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 181
    mul-int v39, v38, v24

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 182
    const/16 v19, 0x1

    .line 186
    .local v19, "dl":I
    const/16 v34, 0x0

    .line 188
    .local v34, "rawDataIndex":I
    const/16 v39, 0x2

    move/from16 v0, v28

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 189
    const/16 v36, 0x0

    .line 190
    .local v36, "red":B
    const/16 v23, 0x0

    .line 191
    .local v23, "green":B
    const/4 v8, 0x0

    .line 192
    .local v8, "blue":B
    const/4 v4, 0x0

    .line 196
    .local v4, "alpha":B
    const/16 v39, 0x20

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    .line 197
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_4
    add-int/lit8 v39, v24, -0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-gt v0, v1, :cond_b

    .line 198
    if-nez p1, :cond_8

    .line 199
    add-int/lit8 v39, v24, -0x1

    sub-int v39, v39, v25

    mul-int v39, v39, v38

    mul-int v34, v39, v19

    .line 202
    :cond_8
    const/16 v30, 0x0

    .local v30, "j":I
    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .local v35, "rawDataIndex":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 203
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 204
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v23

    .line 205
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v36

    .line 206
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 207
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    shl-int/lit8 v39, v39, 0x18

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x10

    or-int v39, v39, v40

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    and-int/lit16 v0, v8, 0xff

    move/from16 v40, v0

    or-int v39, v39, v40

    aput v39, v33, v35

    .line 202
    add-int/lit8 v30, v30, 0x1

    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    goto :goto_5

    .line 184
    .end local v4    # "alpha":B
    .end local v8    # "blue":B
    .end local v19    # "dl":I
    .end local v23    # "green":B
    .end local v25    # "i":I
    .end local v30    # "j":I
    .end local v35    # "rawDataIndex":I
    .end local v36    # "red":B
    :cond_9
    new-instance v39, Ljava/lang/RuntimeException;

    const-string v40, "Only 32-bit color TGAs are supported"

    invoke-direct/range {v39 .. v40}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 197
    .restart local v4    # "alpha":B
    .restart local v8    # "blue":B
    .restart local v19    # "dl":I
    .restart local v23    # "green":B
    .restart local v25    # "i":I
    .restart local v30    # "j":I
    .restart local v35    # "rawDataIndex":I
    .restart local v36    # "red":B
    :cond_a
    add-int/lit8 v25, v25, 0x1

    move/from16 v34, v35

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    goto :goto_4

    .line 210
    .end local v30    # "j":I
    :cond_b
    const/16 v22, 0x4

    .line 304
    .end local v4    # "alpha":B
    .end local v8    # "blue":B
    .end local v23    # "green":B
    .end local v36    # "red":B
    .local v22, "format":I
    :goto_6
    sget-object v39, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v24

    move-object/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v39

    return-object v39

    .line 212
    .end local v22    # "format":I
    .end local v25    # "i":I
    .restart local v4    # "alpha":B
    .restart local v8    # "blue":B
    .restart local v23    # "green":B
    .restart local v36    # "red":B
    :cond_c
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unsupported TGA true color depth: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 214
    .end local v4    # "alpha":B
    .end local v8    # "blue":B
    .end local v23    # "green":B
    .end local v36    # "red":B
    :cond_d
    const/16 v39, 0xa

    move/from16 v0, v28

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    .line 215
    const/16 v36, 0x0

    .line 216
    .restart local v36    # "red":B
    const/16 v23, 0x0

    .line 217
    .restart local v23    # "green":B
    const/4 v8, 0x0

    .line 218
    .restart local v8    # "blue":B
    const/4 v4, 0x0

    .line 221
    .restart local v4    # "alpha":B
    const/16 v39, 0x20

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    .line 222
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_7
    add-int/lit8 v39, v24, -0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-gt v0, v1, :cond_12

    .line 223
    if-nez p1, :cond_e

    .line 224
    add-int/lit8 v39, v24, -0x1

    sub-int v39, v39, v25

    mul-int v39, v39, v38

    mul-int v34, v39, v19

    .line 227
    :cond_e
    const/16 v30, 0x0

    .restart local v30    # "j":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_11

    .line 229
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 230
    .local v16, "count":I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-eqz v39, :cond_f

    .line 232
    and-int/lit8 v16, v16, 0x7f

    .line 233
    add-int v30, v30, v16

    .line 234
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 235
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v23

    .line 236
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v36

    .line 237
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    move/from16 v17, v16

    .end local v16    # "count":I
    .local v17, "count":I
    move/from16 v35, v34

    .line 238
    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    :goto_9
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "count":I
    .restart local v16    # "count":I
    if-ltz v17, :cond_10

    .line 239
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    shl-int/lit8 v39, v39, 0x18

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x10

    or-int v39, v39, v40

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    and-int/lit16 v0, v8, 0xff

    move/from16 v40, v0

    or-int v39, v39, v40

    aput v39, v33, v35

    move/from16 v17, v16

    .end local v16    # "count":I
    .restart local v17    # "count":I
    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    goto :goto_9

    .line 243
    .end local v17    # "count":I
    .end local v35    # "rawDataIndex":I
    .restart local v16    # "count":I
    .restart local v34    # "rawDataIndex":I
    :cond_f
    add-int v30, v30, v16

    move/from16 v17, v16

    .end local v16    # "count":I
    .restart local v17    # "count":I
    move/from16 v35, v34

    .line 244
    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    :goto_a
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "count":I
    .restart local v16    # "count":I
    if-ltz v17, :cond_10

    .line 245
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 246
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v23

    .line 247
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v36

    .line 248
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 249
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    shl-int/lit8 v39, v39, 0x18

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x10

    or-int v39, v39, v40

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    and-int/lit16 v0, v8, 0xff

    move/from16 v40, v0

    or-int v39, v39, v40

    aput v39, v33, v35

    move/from16 v17, v16

    .end local v16    # "count":I
    .restart local v17    # "count":I
    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    goto :goto_a

    .end local v17    # "count":I
    .restart local v16    # "count":I
    :cond_10
    move/from16 v34, v35

    .line 227
    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 222
    .end local v16    # "count":I
    :cond_11
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7

    .line 254
    .end local v30    # "j":I
    :cond_12
    const/16 v22, 0x4

    .restart local v22    # "format":I
    goto/16 :goto_6

    .line 256
    .end local v22    # "format":I
    .end local v25    # "i":I
    :cond_13
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unsupported TGA true color depth: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 259
    .end local v4    # "alpha":B
    .end local v8    # "blue":B
    .end local v23    # "green":B
    .end local v36    # "red":B
    :cond_14
    const/16 v39, 0x1

    move/from16 v0, v28

    move/from16 v1, v39

    if-ne v0, v1, :cond_20

    .line 260
    div-int/lit8 v10, v32, 0x8

    .line 262
    .local v10, "bytesPerIndex":I
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v10, v0, :cond_19

    .line 263
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_b
    add-int/lit8 v39, v24, -0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-gt v0, v1, :cond_1f

    .line 264
    if-nez p1, :cond_15

    .line 265
    add-int/lit8 v39, v24, -0x1

    sub-int v39, v39, v25

    mul-int v39, v39, v38

    mul-int v34, v39, v19

    .line 267
    :cond_15
    const/16 v30, 0x0

    .restart local v30    # "j":I
    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    :goto_c
    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 268
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v29

    .line 269
    .local v29, "index":I
    array-length v0, v13

    move/from16 v39, v0

    move/from16 v0, v29

    move/from16 v1, v39

    if-ge v0, v1, :cond_16

    if-gez v29, :cond_17

    .line 270
    :cond_16
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "TGA: Invalid color map entry referenced: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 273
    :cond_17
    aget-object v20, v13, v29

    .line 274
    .restart local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->alpha:B

    move/from16 v39, v0

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    shl-int/lit8 v39, v39, 0x18

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->red:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x10

    or-int v39, v39, v40

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->green:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->blue:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    or-int v39, v39, v40

    aput v39, v33, v35

    .line 267
    add-int/lit8 v30, v30, 0x1

    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    goto :goto_c

    .line 263
    .end local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .end local v29    # "index":I
    :cond_18
    add-int/lit8 v25, v25, 0x1

    move/from16 v34, v35

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    goto/16 :goto_b

    .line 278
    .end local v25    # "i":I
    .end local v30    # "j":I
    :cond_19
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v10, v0, :cond_1e

    .line 279
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_d
    add-int/lit8 v39, v24, -0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-gt v0, v1, :cond_1f

    .line 280
    if-nez p1, :cond_1a

    .line 281
    add-int/lit8 v39, v24, -0x1

    sub-int v39, v39, v25

    mul-int v39, v39, v38

    mul-int v34, v39, v19

    .line 283
    :cond_1a
    const/16 v30, 0x0

    .restart local v30    # "j":I
    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    :goto_e
    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    .line 284
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v39

    invoke-static/range {v39 .. v39}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->flipEndian(S)S

    move-result v29

    .line 285
    .restart local v29    # "index":I
    array-length v0, v13

    move/from16 v39, v0

    move/from16 v0, v29

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    if-gez v29, :cond_1c

    .line 286
    :cond_1b
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "TGA: Invalid color map entry referenced: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 289
    :cond_1c
    aget-object v20, v13, v29

    .line 290
    .restart local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    add-int/lit8 v34, v35, 0x1

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->alpha:B

    move/from16 v39, v0

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    shl-int/lit8 v39, v39, 0x18

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->red:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x10

    or-int v39, v39, v40

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->green:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    move-object/from16 v0, v20

    iget-byte v0, v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;->blue:B

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    or-int v39, v39, v40

    aput v39, v33, v35

    .line 283
    add-int/lit8 v30, v30, 0x1

    move/from16 v35, v34

    .end local v34    # "rawDataIndex":I
    .restart local v35    # "rawDataIndex":I
    goto :goto_e

    .line 279
    .end local v20    # "entry":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader$ColorMapEntry;
    .end local v29    # "index":I
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    move/from16 v34, v35

    .end local v35    # "rawDataIndex":I
    .restart local v34    # "rawDataIndex":I
    goto/16 :goto_d

    .line 295
    .end local v25    # "i":I
    .end local v30    # "j":I
    :cond_1e
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "TGA: unknown colormap indexing size used: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 298
    .restart local v25    # "i":I
    :cond_1f
    const/16 v22, 0x4

    .line 299
    .restart local v22    # "format":I
    goto/16 :goto_6

    .line 300
    .end local v10    # "bytesPerIndex":I
    .end local v22    # "format":I
    .end local v25    # "i":I
    :cond_20
    new-instance v39, Ljava/io/IOException;

    const-string v40, "Monochrome and RLE colormapped images are not supported"

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
.end method
