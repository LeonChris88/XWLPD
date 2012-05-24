.class Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity$17;)V
    .locals 0

    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->stopConnectionTimeOut()V

    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissProgressDialog()V

    return-void
.end method
