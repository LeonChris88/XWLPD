.class public Lcom/android/email/mail/transport/ExchangeSender;
.super Lcom/android/email/mail/Sender;
.source "ExchangeSender.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 1

    new-instance v0, Lcom/android/email/mail/transport/ExchangeSender;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/transport/ExchangeSender;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public open()V
    .locals 0

    return-void
.end method

.method public sendMessage(J)V
    .locals 0

    return-void
.end method
