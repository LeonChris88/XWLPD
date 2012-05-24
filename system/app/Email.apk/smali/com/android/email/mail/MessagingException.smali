.class public Lcom/android/email/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    return-void
.end method
