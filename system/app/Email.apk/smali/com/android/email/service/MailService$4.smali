.class Lcom/android/email/service/MailService$4;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/service/MailService$4;->this$0:Lcom/android/email/service/MailService;

    iput-wide p2, p0, Lcom/android/email/service/MailService$4;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/service/MailService$4;->this$0:Lcom/android/email/service/MailService;

    iget-object v0, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/service/MailService$4;->val$accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->sendPendingMessages(J)V

    return-void
.end method
