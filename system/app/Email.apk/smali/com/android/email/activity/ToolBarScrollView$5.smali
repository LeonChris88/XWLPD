.class Lcom/android/email/activity/ToolBarScrollView$5;
.super Ljava/lang/Object;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ToolBarScrollView;->ChangeFontSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ToolBarScrollView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ToolBarScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Lcom/android/email/activity/ToolBarScrollView;->access$902(Lcom/android/email/activity/ToolBarScrollView;I)I

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$900(Lcom/android/email/activity/ToolBarScrollView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->changeFontSizeForSelection(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
