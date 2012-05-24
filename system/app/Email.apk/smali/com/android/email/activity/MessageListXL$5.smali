.class Lcom/android/email/activity/MessageListXL$5;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->createViewModeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4002(I)I

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4000()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4200(Lcom/android/email/activity/MessageListXL;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    if-ne p2, v1, :cond_0

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$4002(I)I

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    goto :goto_0
.end method
