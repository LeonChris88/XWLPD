.class public Lcom/android/email/TextSelectorForHtmlComposer;
.super Ljava/lang/Object;
.source "TextSelectorForHtmlComposer.java"

# interfaces
.implements Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;,
        Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;
    }
.end annotation


# instance fields
.field private mComposerControl:Landroid/webkit/HtmlComposerView;

.field private mIsSCHMenu:Z

.field private mTextEditNoPasteWindowLayout:I

.field private mTextEditPasteWindowLayout:I

.field private mTextEditSideNoPasteWindowLayout:I

.field private mTextEditSidePasteWindowLayout:I

.field private mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;


# direct methods
.method static synthetic access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/TextSelectorForHtmlComposer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/TextSelectorForHtmlComposer;->createToolTip(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/TextSelectorForHtmlComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/TextSelectorForHtmlComposer;)I
    .locals 1

    iget v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/TextSelectorForHtmlComposer;)I
    .locals 1

    iget v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditNoPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/TextSelectorForHtmlComposer;)I
    .locals 1

    iget v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditSidePasteWindowLayout:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/TextSelectorForHtmlComposer;)I
    .locals 1

    iget v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mTextEditSideNoPasteWindowLayout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private createToolTip(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;-><init>(Lcom/android/email/TextSelectorForHtmlComposer;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    if-eqz v0, :cond_1

    if-ne v3, p1, :cond_2

    iput-boolean v3, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    :goto_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->show()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_0
.end method


# virtual methods
.method public isVisibleCursorHandler(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "TextSelectorForHtmlComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->show()V

    iput-boolean v3, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->hide()V

    iput-boolean v4, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->hide()V

    iput-boolean v4, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/email/TextSelectorForHtmlComposer;->createToolTip(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
