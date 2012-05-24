.class Lcom/android/email/MessagingController$CommandInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field mAccountId:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    return-void
.end method
