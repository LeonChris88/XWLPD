.class Lcom/android/email/activity/SelectGroup$2;
.super Ljava/lang/Object;
.source "SelectGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SelectGroup;->progressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/SelectGroup;

.field final synthetic val$progDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SelectGroup;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/SelectGroup$2;->this$0:Lcom/android/email/activity/SelectGroup;

    iput-object p2, p0, Lcom/android/email/activity/SelectGroup$2;->val$progDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$2;->this$0:Lcom/android/email/activity/SelectGroup;

    iget-object v1, p0, Lcom/android/email/activity/SelectGroup$2;->val$progDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Lcom/android/email/activity/SelectGroup;->access$000(Lcom/android/email/activity/SelectGroup;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$2;->this$0:Lcom/android/email/activity/SelectGroup;

    invoke-static {v0}, Lcom/android/email/activity/SelectGroup;->access$100(Lcom/android/email/activity/SelectGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$2;->val$progDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
