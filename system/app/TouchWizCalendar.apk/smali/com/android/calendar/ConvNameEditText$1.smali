.class Lcom/android/calendar/ConvNameEditText$1;
.super Ljava/lang/Object;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ConvNameEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ConvNameEditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/ConvNameEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/widget/LinearLayout;

    const v5, 0x7f0f0017

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0f0018

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0019

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v5}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v5}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v6}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v7}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    iget-object v6, v5, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, v3, v4, v0, v5}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method
