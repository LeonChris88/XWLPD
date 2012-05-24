.class Lcom/sec/android/app/calculator/CExpression;
.super Ljava/lang/Object;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/calculator/CExpression$1;
    }
.end annotation


# static fields
.field static final FACT:[D

.field static final GAMMA:[D


# instance fields
.field Cursor:I

.field private exception:Lcom/sec/android/app/calculator/SyntaxException;

.field private infixStringExp:Ljava/lang/StringBuilder;

.field private infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

.field private postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    return-void

    nop

    :array_0
    .array-data 0x8
        0xcet 0xact 0xc1t 0x87t 0xfft 0x93t 0x4ct 0x40t
        0x30t 0x89t 0x5t 0xf7t 0x89t 0xcct 0x4dt 0xc0t
        0xa1t 0x22t 0x3dt 0xa2t 0xaet 0x45t 0x2ct 0x40t
        0xe4t 0xbft 0x25t 0x16t 0x84t 0x7bt 0xdft 0xbft
        0x3at 0x18t 0x86t 0x47t 0xaft 0xd2t 0x1t 0x3ft
        0xbdt 0xe3t 0xc5t 0xb7t 0x4bt 0x64t 0x8t 0x3ft
        0xb7t 0x74t 0xe5t 0x9dt 0xcct 0xc9t 0x19t 0xbft
        0x6dt 0xe6t 0xd4t 0x9et 0x93t 0xb8t 0x24t 0x3ft
        0x36t 0xbet 0x2at 0xcdt 0x4dt 0x8ft 0x2bt 0xbft
        0x26t 0xe8t 0xe9t 0x18t 0x10t 0x80t 0x2ct 0x3ft
        0x40t 0x26t 0x95t 0xc9t 0x99t 0x89t 0x25t 0xbft
        0x55t 0x3dt 0x77t 0xbt 0x36t 0x21t 0x16t 0x3ft
        0x6t 0xe2t 0xd1t 0xb5t 0x8ct 0x76t 0xfbt 0xbet
        0x10t 0x98t 0xfct 0x4t 0xat 0xf4t 0xcet 0x3et
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0xb0t 0xe3t 0x40t
        0x0t 0x0t 0x80t 0x75t 0x77t 0x7t 0xb3t 0x42t
        0x9at 0x7bt 0x7at 0x68t 0x52t 0x6ct 0xe0t 0x44t
        0xa4t 0x33t 0xaet 0xat 0xadt 0x56t 0x49t 0x47t
        0xfet 0x98t 0x70t 0x3t 0x5dt 0xddt 0xe1t 0x49t
        0xb6t 0x2ct 0xd7t 0x78t 0x9at 0xe6t 0x9et 0x4ct
        0x3t 0x40t 0x9at 0x35t 0x93t 0x26t 0x79t 0x4ft
        0x4at 0x84t 0x34t 0xeet 0x78t 0xe4t 0x6ft 0x52t
        0xb6t 0x95t 0x66t 0x79t 0x5t 0x57t 0x7bt 0x55t
        0xfft 0xabt 0xedt 0x94t 0x90t 0x61t 0x9ct 0x58t
        0x3et 0x74t 0x30t 0x4bt 0xct 0x55t 0xd0t 0x5bt
        0x47t 0x63t 0xbdt 0xd7t 0x8dt 0x63t 0x13t 0x5ft
        0x70t 0xat 0x76t 0xb1t 0xet 0x5bt 0x66t 0x62t
        0x3t 0xe5t 0xcft 0x97t 0xc1t 0xcat 0xc7t 0x65t
        0x16t 0xd9t 0xa9t 0x80t 0x63t 0x5ft 0x36t 0x69t
        0xe5t 0xe1t 0x40t 0xc1t 0xdft 0xe5t 0xb1t 0x6ct
        0x55t 0x8t 0x3bt 0x41t 0x85t 0x91t 0x37t 0x70t
        0x7et 0x70t 0xdbt 0xfat 0x85t 0xcet 0xc8t 0x73t
        0xa3t 0xd5t 0xeft 0x3at 0x90t 0x55t 0x64t 0x77t
        0xdet 0x8et 0x92t 0x3dt 0x5ft 0x5dt 0x9t 0x7bt
        0x43t 0x3at 0x9dt 0xa7t 0x2ft 0x93t 0xb7t 0x7et
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    const/16 v3, 0x100

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    new-array v1, v3, [Lcom/sec/android/app/calculator/CToken;

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-array v1, v3, [Lcom/sec/android/app/calculator/CToken;

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-instance v1, Lcom/sec/android/app/calculator/SyntaxException;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/SyntaxException;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final abs(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private checkingExpression(Z)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isCharSet(C)Z

    move-result v34

    if-nez v34, :cond_2

    const/4 v3, 0x1

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    if-gez v29, :cond_3c

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_2
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_3

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_17

    :cond_3
    add-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    const/16 v34, 0xf

    move/from16 v0, v25

    move/from16 v1, v34

    if-le v0, v1, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    if-lez v14, :cond_b

    add-int/lit8 v15, v15, 0x1

    const/16 v34, 0x5

    move/from16 v0, v34

    if-le v15, v0, :cond_a

    if-nez p1, :cond_a

    const/16 v34, 0x45

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v24

    const/16 v34, -0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/4 v14, 0x0

    :cond_5
    add-int/lit8 v20, v19, 0x1

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v34

    if-nez v34, :cond_6

    const/16 v18, 0x0

    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_7
    const/16 v18, 0x1

    goto :goto_2

    :cond_8
    if-eqz v18, :cond_9

    const/16 v34, 0x1

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    const/16 v34, 0x9

    move/from16 v0, v34

    if-le v15, v0, :cond_b

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/4 v14, 0x0

    :cond_b
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    add-int/lit8 v14, v14, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    if-gt v14, v0, :cond_c

    const-string v34, "."

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    const/4 v13, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x65

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x3c0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x65

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_10

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v13, 0x0

    const/4 v12, 0x0

    :cond_11
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v34

    if-nez v34, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_12
    const/4 v13, 0x0

    const/4 v12, 0x0

    :cond_13
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_15

    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0x25

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0x3c0

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    if-eqz v13, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    const/16 v34, 0xa

    move/from16 v0, v34

    if-le v12, v0, :cond_1b

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_17
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_18

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_18

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    :cond_18
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_19
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070016

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_1a
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x29

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_20

    const/4 v13, 0x0

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_1b

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1b

    const/16 v34, 0x25

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1b

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1b

    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_1c

    :cond_1b
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_1c
    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_1e

    :cond_1d
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_1e
    const/16 v34, 0xf7

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_27

    const/4 v13, 0x0

    const/4 v12, 0x0

    add-int/lit8 v28, v28, 0x1

    move/from16 v27, v19

    if-lez v19, :cond_21

    const/16 v34, 0x221a

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_22

    :cond_21
    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-le v0, v1, :cond_23

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_23

    add-int/lit8 v34, v19, -0x2

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x221a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_23
    if-nez p1, :cond_3b

    const-string v34, "log"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_3b

    const-string v35, "log"

    add-int/lit8 v34, v19, -0x3

    if-lez v34, :cond_26

    add-int/lit8 v34, v19, -0x4

    :goto_5
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_24

    add-int/lit8 v34, v19, -0x4

    move/from16 v0, v23

    move/from16 v1, v34

    if-eq v0, v1, :cond_25

    :cond_24
    const/16 v34, 0x67

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    add-int/lit8 v34, v19, -0x3

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_26
    const/16 v34, 0x0

    goto :goto_5

    :cond_27
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_2a

    move/from16 v33, v19

    :goto_6
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_28

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_28

    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    :cond_28
    move-object/from16 v0, v31

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v34, "sin"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    const-string v34, "cos"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    const-string v34, "tan"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    const-string v34, "log"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    const-string v34, "ln"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    const-string v34, "abs"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_29
    const/4 v13, 0x0

    add-int/lit8 v28, v28, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    add-int v19, v19, v34

    move/from16 v27, v19

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_3b

    const/16 v34, 0x1

    move/from16 v0, p1

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_2a
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v34

    if-eqz v34, :cond_3b

    const/4 v13, 0x0

    const/16 v34, 0x45

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_2b
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v34

    if-nez v34, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_2c
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x5e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_2d

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_4

    :cond_2d
    if-nez v30, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_2e
    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_30

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    add-int/lit8 v35, v19, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_2f

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    :cond_2f
    add-int/lit8 v22, v19, 0x2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v22

    move/from16 v1, v34

    if-lt v0, v1, :cond_32

    const/4 v6, 0x1

    :cond_30
    :goto_7
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x21

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_33

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_31

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_33

    :cond_31
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    const/16 v16, 0x1

    goto/16 :goto_1

    :cond_32
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x32

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    const/4 v5, 0x1

    goto :goto_7

    :cond_33
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x25

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_35

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_34

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_34

    const/16 v34, 0x3c0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_34

    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_34
    add-int/lit8 v34, v19, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_35

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_35

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x29

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_35
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x221a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_37

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_36

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_37

    :cond_36
    const/4 v8, 0x1

    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    goto/16 :goto_1

    :cond_37
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x21

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_38

    const/16 v25, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    :cond_38
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_3a

    sparse-switch v30, :sswitch_data_0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_39

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_3a

    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_3a

    :cond_39
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    const/4 v9, 0x1

    :cond_3a
    :goto_8
    const/4 v13, 0x0

    add-int/lit8 v28, v28, 0x1

    move/from16 v27, v19

    const/4 v12, 0x0

    :cond_3b
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3a

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3a

    :sswitch_1
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    const/4 v9, 0x1

    goto :goto_8

    :cond_3c
    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_3d
    if-eqz v7, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_3e
    const/16 v34, 0x14

    move/from16 v0, v28

    move/from16 v1, v34

    if-le v0, v1, :cond_3f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_3f
    if-eqz v16, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_40
    if-eqz v5, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_41
    if-eqz v6, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_42
    if-nez v26, :cond_43

    if-nez v27, :cond_43

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_43

    const/16 v34, 0x221a

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_43
    if-eqz v9, :cond_45

    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v10, v0, :cond_44

    const/4 v10, 0x0

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_45
    move/from16 v11, v29

    :goto_9
    if-lez v11, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    :cond_46
    if-eqz v8, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_47
    const/16 v34, 0x1

    move/from16 v0, p1

    move/from16 v1, v34

    if-ne v0, v1, :cond_4a

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_48
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v34, 0x221a

    move/from16 v0, v21

    move/from16 v1, v34

    if-eq v0, v1, :cond_49

    const/16 v34, 0x5e

    move/from16 v0, v21

    move/from16 v1, v34

    if-ne v0, v1, :cond_4c

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_4a
    const/16 v34, 0x1

    move/from16 v0, v34

    if-eq v10, v0, :cond_4b

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_4b

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4c

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070015

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_4c
    if-eqz v17, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    :cond_4d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x5e -> :sswitch_1
        0x221a -> :sswitch_1
    .end sparse-switch
.end method

.method public static final cos(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private evaluateByToken(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-wide/high16 v4, -0x4010

    :goto_0
    return-wide v4

    :pswitch_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private evaluateByTokenOne(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const v8, 0x7f070006

    const-wide/16 v6, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v1

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    sget-object v4, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-wide/high16 v4, -0x4010

    :goto_0
    return-wide v4

    :pswitch_0
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->abs(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->persentage(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->sin(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_3
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->cos(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_4
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->tan(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_5
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_6
    cmpg-double v4, v1, v6

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v5, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_7
    cmpg-double v4, v1, v6

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v5, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    :cond_1
    const/4 v3, 0x0

    double-to-int v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v4, v1

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0

    :pswitch_8
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    const v5, 0x7f070001

    iget v6, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    :cond_3
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->factorial(D)D

    move-result-wide v4

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    mul-double/2addr v1, v4

    move-wide v4, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static final factorial(D)D
    .locals 7

    const-wide/high16 v5, 0x3ff0

    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_0

    const-wide/high16 v3, 0x7ff8

    :goto_0
    return-wide v3

    :cond_0
    const-wide v3, 0x4065400000000000L

    cmpl-double v3, p0, v3

    if-lez v3, :cond_1

    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v3, v3, p0

    if-eqz v3, :cond_2

    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_0

    :cond_2
    double-to-int v2, p0

    move-wide v0, p0

    and-int/lit8 v3, v2, 0x7

    packed-switch v3, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_0

    :pswitch_0
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_1
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_2
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_3
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_4
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_5
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    :pswitch_6
    sget-object v3, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    shr-int/lit8 v4, v2, 0x3

    aget-wide v3, v3, v4

    mul-double/2addr v3, v0

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    shr-int/lit8 v4, v2, 0x3

    aget-wide v3, v3, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getToken(Lcom/sec/android/app/calculator/Int;I)Lcom/sec/android/app/calculator/CToken;
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isSpace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_1

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    const-wide v4, 0x4005bf0a8b145774L

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    :goto_1
    return-object v2

    :cond_1
    const/16 v4, 0x3c0

    if-ne v0, v4, :cond_2

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    const-wide v4, 0x400921fb54442d11L

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_1

    :cond_2
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->isSign(Lcom/sec/android/app/calculator/Int;I)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_1

    :cond_3
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    const-wide/high16 v4, -0x4010

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_1

    :cond_6
    const-string v4, "e"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide v4, -0x3ffa40f574eba88cL

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    :goto_3
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_7
    const-string v4, "\u03c0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-wide v4, -0x3ff6de04abbbd2efL

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_3

    :cond_8
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    const-wide/high16 v6, -0x4010

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_3

    :cond_9
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->isSign(Lcom/sec/android/app/calculator/Int;I)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_a
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_c

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_d

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    const-wide/high16 v4, -0x4010

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_e
    const-string v4, "e"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-wide v4, 0x4005bf0a8b145774L

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    :goto_5
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_f
    const-string v4, "\u03c0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-wide v4, 0x400921fb54442d11L

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_5

    :cond_10
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_5

    :cond_11
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    const-string v4, "sin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_1

    :cond_13
    const-string v4, "cos"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->COS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_1

    :cond_14
    const-string v4, "tan"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->TAN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_1

    :cond_15
    const-string v4, "log"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LOG:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_1

    :cond_16
    const-string v4, "abs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ABS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_1

    :cond_17
    const-string v4, "ln"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_18
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0x29

    if-ne v0, v4, :cond_1a

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->RPARAM:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    :goto_7
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x28

    if-ne v0, v4, :cond_1b

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :cond_1b
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    sparse-switch v0, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_1
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MULTI:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_2
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->DIVIDE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_3
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_4
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_5
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SQUARE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_6
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ROOT:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_7
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PERSENTAGE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :sswitch_8
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->FACT:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_7

    :cond_1c
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_1f

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1e

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1d

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_1e

    :cond_1d
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1f

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_1f

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_8
        0x25 -> :sswitch_7
        0x2b -> :sswitch_3
        0x2d -> :sswitch_4
        0x5e -> :sswitch_5
        0xd7 -> :sswitch_1
        0xf7 -> :sswitch_2
        0x221a -> :sswitch_6
    .end sparse-switch
.end method

.method private infix2postfix()V
    .locals 11

    const/16 v9, 0x14

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    new-instance v5, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v5}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    new-instance v1, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    new-array v0, v9, [I

    fill-array-data v0, :array_1

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v9, v2

    move v2, v3

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-eq v9, v10, :cond_3

    sget-object v9, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    :goto_1
    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v9

    aget v9, v4, v9

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v10

    aget v10, v0, v10

    if-lt v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    aput-object v5, v9, v6

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    move v6, v7

    goto :goto_1

    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    aput-object v1, v9, v6

    move v6, v7

    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v9, v2

    move v2, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    :goto_3
    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    aput-object v5, v9, v6

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    move v6, v7

    goto :goto_3

    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    aput-object v5, v9, v6

    move v6, v7

    :cond_3
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-ne v9, v10, :cond_2

    :cond_4
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final isPiMultiple(D)Z
    .locals 4

    const-wide v2, 0x400921fb54442d18L

    div-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSign(Lcom/sec/android/app/calculator/Int;I)Z
    .locals 2

    iget v0, p1, Lcom/sec/android/app/calculator/Int;->data:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final lgamma(D)D
    .locals 11

    const-wide v5, 0x4014f80000000000L

    add-double v3, p0, v5

    const-wide v1, 0x3fefffffffffffe6L

    const/4 v0, 0x0

    :goto_0
    sget-object v5, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    array-length v5, v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    aget-wide v5, v5, v0

    const-wide/high16 v7, 0x3ff0

    add-double/2addr p0, v7

    div-double/2addr v5, p0

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide v5, 0x3fed67f1c864beb5L

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide v7, 0x4012f80000000000L

    sub-double v7, v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v5, v3

    return-wide v5
.end method

.method public static final persentage(D)D
    .locals 2

    const-wide/high16 v0, 0x4059

    div-double v0, p0, v0

    return-wide v0
.end method

.method private setRounds(D)D
    .locals 2

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/calculator/CExpression;->setRounds(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method private setRounds(DI)D
    .locals 16

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x45

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_1

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :goto_0
    const/4 v14, -0x1

    if-eq v6, v14, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v11, ""

    goto :goto_0

    :cond_2
    add-int/2addr v7, v4

    if-ge v4, v9, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, -0x1

    :cond_3
    add-int p3, p3, v7

    move/from16 v0, p3

    if-ge v0, v9, :cond_6

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x35

    if-lt v14, v15, :cond_5

    add-int/lit8 v10, p3, -0x1

    :goto_2
    if-ltz v10, :cond_4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x39

    if-ne v14, v15, :cond_4

    const/16 v14, 0x30

    invoke-virtual {v3, v10, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_4
    if-ltz v10, :cond_8

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, 0x1

    int-to-char v14, v14

    invoke-virtual {v3, v10, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_5
    :goto_3
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_6
    const/4 v14, -0x5

    if-lt v7, v14, :cond_7

    const/16 v14, 0xf

    if-le v7, v14, :cond_9

    :cond_7
    const/4 v14, 0x1

    const/16 v15, 0x2e

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, -0x1

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    sub-int v14, v9, v4

    add-int/lit8 v5, v14, -0x1

    const/16 v14, 0xa

    if-le v5, v14, :cond_d

    add-int/lit8 v5, v5, -0xa

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_d

    add-int/lit8 v14, v4, 0xa

    add-int/2addr v14, v8

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x30

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    const/16 v15, 0x31

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move v8, v9

    :goto_6
    if-ge v8, v7, :cond_a

    const/16 v14, 0x30

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    move v8, v7

    :goto_7
    if-gtz v8, :cond_b

    const/4 v14, 0x0

    const/16 v15, 0x30

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    if-gtz v7, :cond_c

    const/4 v7, 0x1

    :cond_c
    const/16 v14, 0x2e

    invoke-virtual {v3, v7, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v13, v9, -0x1

    :goto_8
    if-ltz v13, :cond_e

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_e

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_e
    if-ltz v13, :cond_f

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_f

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    const/16 v14, 0x45

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    const-wide/16 v14, 0x0

    cmpg-double v14, p1, v14

    if-gez v14, :cond_11

    const/4 v14, 0x0

    const/16 v15, 0x2d

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    return-wide v14
.end method

.method public static final sin(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static final tan(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    rem-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public checkInputExp(Ljava/lang/StringBuilder;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xad

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    const-string v3, "-"

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2212

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    const-string v3, "-"

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/calculator/CExpression;->checkingExpression(Z)V

    if-eqz p2, :cond_8

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/CExpression;->transInfixStringExp2TokenExp()V

    invoke-direct {p0}, Lcom/sec/android/app/calculator/CExpression;->infix2postfix()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 v2, 0x1

    :goto_2
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_2
.end method

.method public evaluateExp()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    sget-object v8, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v1, v0, 0x1

    aget-object v2, v8, v0

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-eq v8, v9, :cond_0

    sget-object v8, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/calculator/CToken;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {p0, v2, v5, v4}, Lcom/sec/android/app/calculator/CExpression;->evaluateByToken(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D

    move-result-wide v6

    new-instance v8, Lcom/sec/android/app/calculator/CToken;

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-direct {v8, v9, v6, v7}, Lcom/sec/android/app/calculator/CToken;-><init>(Lcom/sec/android/app/calculator/token_type;D)V

    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v1, v0, 0x1

    aget-object v2, v8, v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/calculator/CExpression;->evaluateByTokenOne(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D

    move-result-wide v6

    new-instance v8, Lcom/sec/android/app/calculator/CToken;

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-direct {v8, v9, v6, v7}, Lcom/sec/android/app/calculator/CToken;-><init>(Lcom/sec/android/app/calculator/token_type;D)V

    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/calculator/CToken;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    iget-wide v8, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transInfixStringExp2TokenExp()V
    .locals 6

    new-instance v2, Lcom/sec/android/app/calculator/Int;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/Int;-><init>()V

    const/4 v1, 0x0

    new-instance v3, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v3}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    iget-object v5, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/calculator/CExpression;->getToken(Lcom/sec/android/app/calculator/Int;I)Lcom/sec/android/app/calculator/CToken;

    move-result-object v3

    iget v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmTrans()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
