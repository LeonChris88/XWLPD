.class Lcom/android/email/activity/MessageListXL$11;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V
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

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v6, 0x10001

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setCurrentPosition(I)V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-ne p3, v0, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    packed-switch p3, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4200(Lcom/android/email/activity/MessageListXL;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq v0, v4, :cond_3

    if-ne p3, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->requestFocus()Z

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq p3, v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
