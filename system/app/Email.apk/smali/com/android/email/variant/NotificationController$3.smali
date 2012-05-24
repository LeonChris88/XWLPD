.class Lcom/android/email/variant/NotificationController$3;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/variant/NotificationController;->showSendFailedNotification(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/variant/NotificationController;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/variant/NotificationController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/variant/NotificationController$3;->this$0:Lcom/android/email/variant/NotificationController;

    iput-wide p2, p0, Lcom/android/email/variant/NotificationController$3;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/variant/NotificationController$3;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/email/variant/NotificationController$3;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v2, p0, Lcom/android/email/variant/NotificationController$3;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/variant/NotificationController$3;->val$messageId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/variant/NotificationController;->createSendFailNotification(JJ)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/variant/NotificationController$3;->this$0:Lcom/android/email/variant/NotificationController;

    invoke-static {v1}, Lcom/android/email/variant/NotificationController;->access$100(Lcom/android/email/variant/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/variant/NotificationController$3;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v3, p0, Lcom/android/email/variant/NotificationController$3;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/variant/NotificationController;->access$200(Lcom/android/email/variant/NotificationController;J)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
