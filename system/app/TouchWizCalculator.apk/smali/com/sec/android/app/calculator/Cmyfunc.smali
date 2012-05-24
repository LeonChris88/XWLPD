.class Lcom/sec/android/app/calculator/Cmyfunc;
.super Ljava/lang/Object;
.source "Logic.java"


# static fields
.field private static mOrigin:Ljava/lang/String;

.field static final mStrTokens:[Ljava/lang/String;

.field private static mTrans:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ")"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tan"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ln"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u221a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "log"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u00d7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2212"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearmOrigin()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public static getmOrigin()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public static getmTrans()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    return-object v0
.end method

.method static isChar(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isCharSet(C)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x65

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x45

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOnlyDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOpByTwo(C)Z
    .locals 1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0xad

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2212

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOprator(C)Z
    .locals 1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2212

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isToken(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x5e -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x67 -> :sswitch_0
        0x6c -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0xad -> :sswitch_0
        0xd7 -> :sswitch_0
        0xf7 -> :sswitch_0
        0x2212 -> :sswitch_0
        0x221a -> :sswitch_0
    .end sparse-switch
.end method

.method public static setmOrigin(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public static setmTrans(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    return-void
.end method

.method static whereLastToken(Ljava/lang/String;Z)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    :cond_0
    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
