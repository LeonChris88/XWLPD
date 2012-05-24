.class Lcom/beetstra/jutf7/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# instance fields
.field private final alphabet:[C

.field private final inverseAlphabet:[I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alphabet has incorrect length (should be 64, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v2, v1

    if-lt v0, v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character in alphabet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aput v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method contains(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v1, v1, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getChar(I)B
    .locals 1

    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method getSextet(B)I
    .locals 1

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v0, v0, p1

    goto :goto_0
.end method
