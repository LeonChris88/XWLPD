.class public Lcom/android/email/activity/MessageCommandButtonView;
.super Landroid/widget/LinearLayout;
.source "MessageCommandButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;,
        Lcom/android/email/activity/MessageCommandButtonView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

.field private mMessagePosition:Landroid/widget/TextView;

.field private mMoveToNewerButton:Landroid/widget/ImageButton;

.field private mMoveToOlderButton:Landroid/widget/ImageButton;

.field private mShowPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToNewer()V

    goto :goto_0

    :pswitch_2
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToOlder()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10016b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f10016b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/widget/ImageButton;

    const v0, 0x7f10016c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMessagePosition:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    return-void
.end method
