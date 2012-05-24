.class Lcom/android/email/SncMessagingController$CommandInfo;
.super Ljava/lang/Object;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field mAccountId:J

.field mMailboxId:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    iput-wide p3, p0, Lcom/android/email/SncMessagingController$CommandInfo;->mMailboxId:J

    return-void
.end method
