.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOF:Ljavax/mail/internet/HeaderTokenizer$Token;


# instance fields
.field private delimiters:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private maxPos:I

.field private next:I

.field private peek:I

.field private pos:I

.field private skipComments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private filter(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v1

    move v0, v1

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    if-eqz v3, :cond_0

    move v3, v0

    move v0, v1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v7, v0

    move v0, v3

    move v3, v7

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v3, 0x5c

    if-ne v5, v3, :cond_1

    move v0, v1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    if-ne v5, v3, :cond_2

    move v3, v0

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    move v3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private skipWhitespace()I
    .locals 2

    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    goto :goto_1
.end method

.method private token()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    const/4 v9, -0x4

    const/16 v8, 0x28

    const/16 v7, 0x22

    const/16 v6, 0x20

    const/4 v2, 0x1

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhitespace()I

    move-result v0

    if-ne v0, v9, :cond_1

    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_1
    if-ne v1, v8, :cond_b

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v1, v0

    move v0, v2

    :goto_2
    if-lez v0, :cond_6

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v1, v2

    :cond_2
    :goto_3
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_2

    :cond_3
    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    if-ne v4, v8, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/16 v5, 0x29

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Illegal comment"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean v0, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v0, :cond_9

    if-eqz v1, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Ljavax/mail/internet/HeaderTokenizer;->filter(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhitespace()I

    move-result v0

    if-ne v0, v9, :cond_a

    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_1

    :cond_b
    if-ne v1, v7, :cond_11

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    :goto_5
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v3, v4, :cond_10

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_d

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v0, v2

    :cond_c
    :goto_6
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_5

    :cond_d
    const/16 v4, 0xd

    if-ne v3, v4, :cond_e

    move v0, v2

    goto :goto_6

    :cond_e
    if-ne v3, v7, :cond_c

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer;->filter(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Illegal quoted string"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-lt v1, v6, :cond_12

    const/16 v0, 0x7f

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    :cond_12
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    new-array v2, v2, [C

    const/4 v0, 0x0

    aput-char v1, v2, v0

    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    :goto_8
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v2, :cond_14

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_14

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_14

    if-eq v0, v8, :cond_14

    if-eq v0, v6, :cond_14

    if-eq v0, v7, :cond_14

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_15

    :cond_14
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x1

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_8
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->token()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    return-object v0
.end method
