.class public Lgnu/mail/util/QOutputStream;
.super Lgnu/mail/util/QPOutputStream;
.source "QOutputStream.java"


# static fields
.field private static TEXT_SPECIALS:Ljava/lang/String;

.field private static WORD_SPECIALS:Ljava/lang/String;


# instance fields
.field private specials:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "=_?"

    sput-object v0, Lgnu/mail/util/QOutputStream;->TEXT_SPECIALS:Ljava/lang/String;

    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    sput-object v0, Lgnu/mail/util/QOutputStream;->WORD_SPECIALS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lgnu/mail/util/QPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    if-eqz p2, :cond_0

    sget-object v0, Lgnu/mail/util/QOutputStream;->WORD_SPECIALS:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lgnu/mail/util/QOutputStream;->specials:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lgnu/mail/util/QOutputStream;->TEXT_SPECIALS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static encodedLength([BZ)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v0, Lgnu/mail/util/QOutputStream;->WORD_SPECIALS:Ljava/lang/String;

    :goto_0
    move v2, v1

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    :cond_0
    add-int/lit8 v2, v2, 0x3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lgnu/mail/util/QOutputStream;->TEXT_SPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x20

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0xff

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5f

    invoke-virtual {p0, v0, v2}, Lgnu/mail/util/QOutputStream;->output(IZ)V

    :goto_0
    return-void

    :cond_0
    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgnu/mail/util/QOutputStream;->specials:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/mail/util/QOutputStream;->output(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Lgnu/mail/util/QOutputStream;->output(IZ)V

    goto :goto_0
.end method
