.class Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3ResponseInputStream"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mIn:Ljava/io/InputStream;

.field private mStartOfLine:Z

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    if-eqz v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
