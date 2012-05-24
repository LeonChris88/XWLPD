.class Lcom/android/calendar/ConvNameEditText$2;
.super Ljava/lang/Object;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->isPerformingCompletion()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEditHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$100(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1, p1, v3}, Lcom/android/calendar/ConvNameEditText;->access$200(Lcom/android/calendar/ConvNameEditText;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$300(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$400(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
