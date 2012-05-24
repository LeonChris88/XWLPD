.class Lcom/android/calendar/ComposeHeaderView$2;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v1, v0}, Lcom/android/calendar/ComposeHeaderView;->access$1000(Lcom/android/calendar/ComposeHeaderView;ZZ)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$2;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->setFocusOnLastRecipientBtn()V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1
.end method
