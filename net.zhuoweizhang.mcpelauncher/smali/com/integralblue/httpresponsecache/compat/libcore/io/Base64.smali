.class public final Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "in"    # [B

    .prologue
    .line 39
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 13
    .param p0, "in"    # [B
    .param p1, "len"    # I

    .prologue
    .line 44
    div-int/lit8 v11, p1, 0x4

    mul-int/lit8 v4, v11, 0x3

    .line 46
    .local v4, "length":I
    if-nez v4, :cond_0

    .line 47
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/libcore/util/EmptyArray;->BYTE:[B

    .line 128
    :goto_0
    return-object v10

    .line 50
    :cond_0
    new-array v5, v4, [B

    .line 52
    .local v5, "out":[B
    const/4 v8, 0x0

    .line 57
    .local v8, "pad":I
    :goto_1
    add-int/lit8 v11, p1, -0x1

    aget-byte v1, p0, v11

    .line 59
    .local v1, "chr":B
    const/16 v11, 0xa

    if-eq v1, v11, :cond_1

    const/16 v11, 0xd

    if-eq v1, v11, :cond_1

    const/16 v11, 0x20

    if-eq v1, v11, :cond_1

    const/16 v11, 0x9

    if-ne v1, v11, :cond_2

    .line 56
    :cond_1
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 63
    :cond_2
    const/16 v11, 0x3d

    if-ne v1, v11, :cond_3

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 70
    :cond_3
    const/4 v6, 0x0

    .line 72
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .line 74
    .local v3, "inIndex":I
    const/4 v0, 0x0

    .line 76
    .local v0, "bits":I
    const/4 v9, 0x0

    .line 77
    .local v9, "quantum":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v7, v6

    .end local v6    # "outIndex":I
    .local v7, "outIndex":I
    :goto_3
    if-ge v2, p1, :cond_a

    .line 78
    aget-byte v1, p0, v2

    .line 80
    const/16 v11, 0xa

    if-eq v1, v11, :cond_e

    const/16 v11, 0xd

    if-eq v1, v11, :cond_e

    const/16 v11, 0x20

    if-eq v1, v11, :cond_e

    const/16 v11, 0x9

    if-ne v1, v11, :cond_4

    move v6, v7

    .line 77
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    goto :goto_3

    .line 84
    :cond_4
    const/16 v11, 0x41

    if-lt v1, v11, :cond_5

    const/16 v11, 0x5a

    if-gt v1, v11, :cond_5

    .line 88
    add-int/lit8 v0, v1, -0x41

    .line 107
    :goto_5
    shl-int/lit8 v11, v9, 0x6

    int-to-byte v12, v0

    or-int v9, v11, v12

    .line 108
    rem-int/lit8 v11, v3, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    .line 110
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 111
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 112
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    int-to-byte v11, v9

    aput-byte v11, v5, v7

    .line 114
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 89
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    :cond_5
    const/16 v11, 0x61

    if-lt v1, v11, :cond_6

    const/16 v11, 0x7a

    if-gt v1, v11, :cond_6

    .line 93
    add-int/lit8 v0, v1, -0x47

    goto :goto_5

    .line 94
    :cond_6
    const/16 v11, 0x30

    if-lt v1, v11, :cond_7

    const/16 v11, 0x39

    if-gt v1, v11, :cond_7

    .line 98
    add-int/lit8 v0, v1, 0x4

    goto :goto_5

    .line 99
    :cond_7
    const/16 v11, 0x2b

    if-ne v1, v11, :cond_8

    .line 100
    const/16 v0, 0x3e

    goto :goto_5

    .line 101
    :cond_8
    const/16 v11, 0x2f

    if-ne v1, v11, :cond_9

    .line 102
    const/16 v0, 0x3f

    goto :goto_5

    .line 104
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 116
    :cond_a
    if-lez v8, :cond_b

    .line 118
    mul-int/lit8 v11, v8, 0x6

    shl-int/2addr v9, v11

    .line 120
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 121
    const/4 v11, 0x1

    if-ne v8, v11, :cond_c

    .line 122
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    :cond_b
    move v6, v7

    .line 126
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    :cond_c
    new-array v10, v6, [B

    .line 127
    .local v10, "result":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v6    # "outIndex":I
    .end local v10    # "result":[B
    .restart local v7    # "outIndex":I
    :cond_d
    move v6, v7

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_6

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    :cond_e
    move v6, v7

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B

    .prologue
    const/16 v9, 0x3d

    .line 139
    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v4, v6, 0x3

    .line 140
    .local v4, "length":I
    new-array v5, v4, [B

    .line 141
    .local v5, "out":[B
    const/4 v2, 0x0

    .local v2, "index":I
    array-length v6, p0

    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    sub-int v0, v6, v7

    .line 142
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 143
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 144
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 145
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 146
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 142
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 148
    :cond_0
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    :goto_1
    move v2, v3

    .line 162
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_2
    const/4 v6, 0x0

    sget-object v7, Lcom/integralblue/httpresponsecache/compat/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v5, v6, v2, v7}, Lcom/integralblue/httpresponsecache/compat/Strings;->construct([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 150
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 151
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 152
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-byte v9, v5, v3

    .line 153
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    move v2, v3

    .line 154
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .line 156
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 157
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 158
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 159
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
