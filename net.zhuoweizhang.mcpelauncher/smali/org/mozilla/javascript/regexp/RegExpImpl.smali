.class public Lorg/mozilla/javascript/regexp/RegExpImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mozilla/javascript/RegExpProxy;


# instance fields
.field protected input:Ljava/lang/String;

.field protected lastMatch:Lorg/mozilla/javascript/regexp/SubString;

.field protected lastParen:Lorg/mozilla/javascript/regexp/SubString;

.field protected leftContext:Lorg/mozilla/javascript/regexp/SubString;

.field protected multiline:Z

.field protected parens:[Lorg/mozilla/javascript/regexp/SubString;

.field protected rightContext:Lorg/mozilla/javascript/regexp/SubString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v3

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v0, ""

    const-string v2, ""

    invoke-static {p0, v0, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v2

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p2, v3

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_2

    aget-object v0, p2, v3

    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    goto :goto_0

    :cond_2
    aget-object v0, p2, v3

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v0, p2

    if-ge p3, v0, :cond_3

    aput-object v2, p2, v3

    aget-object v0, p2, p3

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v2, v0, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v2

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    iget v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    new-array v5, v1, [I

    move v1, v2

    :cond_0
    sub-int v6, v0, v1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v4, v0, v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v6, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-lez v6, :cond_1

    iget-object v7, v1, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget v8, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    add-int/2addr v1, v6

    invoke-virtual {v3, v7, v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_1
    aget v1, v5, v2

    add-int/2addr v1, v0

    aget v6, v5, v2

    add-int/2addr v0, v6

    :goto_0
    const/16 v6, 0x24

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v0, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    aget v0, p7, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x78

    if-ne p4, v2, :cond_6

    if-nez p6, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    if-nez v0, :cond_1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aput v0, p7, v2

    :cond_1
    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    if-ge v0, v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    sub-int/2addr v2, v0

    aput v2, p8, v1

    goto :goto_1

    :cond_6
    if-le v0, v1, :cond_7

    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    if-eqz p6, :cond_8

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-interface/range {v0 .. v9}, Lorg/mozilla/javascript/RegExpProxy;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    const/16 v2, 0x82

    if-ge p4, v2, :cond_9

    if-nez v1, :cond_9

    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0x78

    if-ne p4, v2, :cond_b

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p8, v1

    goto :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    if-ne v0, v1, :cond_c

    const/4 v0, -0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    aget v0, p7, v0

    if-lt v0, v1, :cond_e

    move v0, v1

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    aget v0, p7, v0

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method private static interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 7

    const/16 v4, 0x8c

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    if-eqz v0, :cond_1

    if-gt v0, v4, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, p3, 0x1

    if-lt v1, v6, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_6

    if-gt v0, v4, :cond_6

    const/16 v0, 0x30

    if-ne v1, v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move v0, p3

    move v1, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    mul-int/lit8 v3, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, p3

    aput v0, p4, v5

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_7

    move v4, v5

    :goto_2
    add-int/lit8 v3, v1, -0x30

    if-le v3, v4, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    array-length v0, v0

    move v4, v0

    goto :goto_2

    :cond_8
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p3, 0x2

    if-ge v1, v6, :cond_b

    add-int/lit8 v1, p3, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_b

    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v1, v6

    if-gt v1, v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-nez v1, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    aput v3, p4, v5

    sparse-switch v1, :sswitch_data_0

    move-object v0, v2

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    const-string v1, "$"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x78

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v5, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput v1, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    :cond_a
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_1
        0x27 -> :sswitch_4
        0x2b -> :sswitch_2
        0x60 -> :sswitch_3
    .end sparse-switch
.end method

.method private static matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p5

    iget-object v10, v0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p5

    iput-boolean v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    const/4 v6, 0x1

    new-array v11, v6, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v11, v6

    const/4 v7, 0x0

    move-object/from16 v0, p5

    iget v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    const/4 v12, 0x0

    move-object/from16 v6, p6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v6, v6, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    if-eqz v6, :cond_7

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v6, 0x0

    move/from16 v18, v6

    move-object v6, v7

    :goto_2
    const/4 v7, 0x0

    aget v7, v11, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_9

    const/4 v12, 0x0

    move-object/from16 v6, p6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p5

    iget v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v18

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/regexp/RegExpImpl;->match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V

    :goto_3
    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget v6, v6, Lorg/mozilla/javascript/regexp/SubString;->length:I

    if-nez v6, :cond_4

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v6, v8, :cond_0

    const/4 v6, 0x0

    aget v8, v11, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v11, v6

    :cond_4
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    move-object v6, v7

    goto :goto_2

    :cond_5
    move-object/from16 v0, p5

    iget v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move/from16 v16, v0

    iget v8, v6, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int v17, v8, v16

    iget v8, v6, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v6, v6, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v6, v8

    move-object/from16 v0, p5

    iput v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move-object/from16 v12, p5

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    invoke-static/range {v12 .. v17}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p5

    iget v6, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v6, p6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x1

    goto :goto_4

    :cond_9
    move-object v7, v6

    goto/16 :goto_1
.end method

.method private static match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    :cond_0
    iget-object v0, p4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {v0}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, p3, v2, v0}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private static replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_4

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v3, v0, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v5, v3, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v2, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    if-eq p3, v0, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    new-instance v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;-><init>()V

    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iput-boolean v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    :try_start_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    invoke-interface {v1, p1, v0, v0, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    add-int v1, p5, v2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v2, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    :goto_4
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    add-int v3, p4, p5

    invoke-virtual {v1, v2, p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    throw v0

    :cond_4
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    new-array v4, v0, [I

    iget v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    :cond_5
    iget-object v5, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-static {p1, p3, v5, v0, v4}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v5, v5, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aget v6, v4, v1

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    aget v5, v4, v1

    add-int/2addr v0, v5

    :goto_6
    iget-object v5, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    const/16 v6, 0x24

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_5

    :cond_6
    move-object v0, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    goto :goto_4

    :cond_9
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V

    goto :goto_5
.end method


# virtual methods
.method public action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 13

    new-instance v6, Lorg/mozilla/javascript/regexp/GlobData;

    invoke-direct {v6}, Lorg/mozilla/javascript/regexp/GlobData;-><init>()V

    move/from16 v0, p5

    iput v0, v6, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    packed-switch p5, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p4

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p4, v1

    instance-of v1, v1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v1, :cond_2

    :cond_1
    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    move v5, v1

    :goto_1
    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-static {p1, p2, v0, v2, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v7

    move-object v2, v1

    :goto_2
    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    instance-of v8, v1, Lorg/mozilla/javascript/Function;

    if-eqz v8, :cond_8

    check-cast v1, Lorg/mozilla/javascript/Function;

    move-object v3, v4

    :goto_4
    iput-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    iput-object v3, v6, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    if-nez v3, :cond_9

    const/4 v1, -0x1

    :goto_5
    iput v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    const/4 v1, 0x0

    iput-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    if-eqz v5, :cond_a

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    iget-object v2, v6, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    if-nez v2, :cond_d

    iget-boolean v2, v6, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_3
    iget-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v5, v1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_6

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_7
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    aget-object v1, p4, v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x1

    aget-object v1, p4, v1

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    goto :goto_4

    :cond_9
    const/16 v1, 0x24

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_5

    :cond_a
    iget-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v4, Lorg/mozilla/javascript/regexp/SubString;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v4, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v4, v1, v3, v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v4, Lorg/mozilla/javascript/regexp/SubString;

    add-int v5, v3, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v3, v7, v3

    sub-int v2, v3, v2

    invoke-direct {v4, v1, v5, v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v10, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v11, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move-object v7, p1

    move-object v8, p2

    move-object v9, p0

    invoke-static/range {v6 .. v11}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    :cond_d
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object v2, v6, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget v4, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v5, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v0

    return-object v0
.end method

.method public find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p6, v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    move-object v0, p5

    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    :goto_0
    const/4 v2, 0x0

    aget v9, p6, v2

    const/4 v2, 0x0

    aput v1, p6, v2

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    aput v9, p6, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p7, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, p8, v0

    move v0, v7

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    aget v1, p6, v1

    const/4 v2, 0x0

    aput v9, p6, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, p8, v2

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    const/4 v3, 0x0

    iget v2, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aput v2, p7, v3

    const/4 v2, 0x0

    aget v2, p7, v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    aget v2, p6, v2

    if-ne v1, v2, :cond_4

    if-ne v1, v7, :cond_3

    const/16 v0, 0x78

    if-ne v8, v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, p7, v0

    move v0, v1

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/String;

    aput-object v3, p9, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p9, v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    aget v0, p7, v0

    sub-int v0, v1, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    array-length v1, v1

    goto :goto_2
.end method

.method getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0
.end method

.method public isRegExp(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return v0
.end method

.method public js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v18

    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    move/from16 v19, v4

    :goto_0
    const-wide/16 v4, 0x0

    if-eqz v19, :cond_d

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    move-wide/from16 v16, v4

    :goto_1
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, p4, v4

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-interface {v0, v4, v1, v2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object/from16 v4, v18

    :goto_2
    return-object v4

    :cond_1
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v12, v4, [I

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    aget-object v4, p4, v4

    instance-of v4, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v4, 0x0

    aget-object v4, p4, v4

    check-cast v4, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v9, v4}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v10, v4

    :cond_3
    if-nez v10, :cond_4

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v12, v4

    :cond_4
    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v13, v5, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v13, v5

    const/4 v5, 0x1

    new-array v14, v5, [[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v14, v5

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    move v15, v4

    :goto_3
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v14}, Lorg/mozilla/javascript/regexp/RegExpImpl;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_6

    if-eqz v19, :cond_5

    int-to-long v4, v15

    cmp-long v4, v4, v16

    if-gez v4, :cond_6

    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v20

    if-le v0, v4, :cond_7

    :cond_6
    move-object/from16 v4, v18

    goto :goto_2

    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1, v4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v4, v15, 0x1

    if-eqz v10, :cond_9

    const/4 v5, 0x0

    aget-boolean v5, v13, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const/4 v5, 0x0

    aget-object v5, v14, v5

    array-length v15, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v15, :cond_8

    if-eqz v19, :cond_c

    int-to-long v0, v4

    move-wide/from16 v22, v0

    cmp-long v6, v22, v16

    if-ltz v6, :cond_c

    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v13, v5

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v12, v6

    add-int v6, v6, v20

    aput v6, v11, v5

    const/16 v5, 0x82

    if-ge v8, v5, :cond_a

    if-eqz v8, :cond_a

    if-nez v19, :cond_a

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_a
    move v15, v4

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    aget v4, v11, v4

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    aget-object v6, v14, v6

    aget-object v6, v6, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1, v6}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_5

    :cond_d
    move-wide/from16 v16, v4

    goto/16 :goto_1
.end method

.method public wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    check-cast p3, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v0, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    return-object v0
.end method
