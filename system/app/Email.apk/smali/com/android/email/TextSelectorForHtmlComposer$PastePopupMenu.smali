.class Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;
.super Ljava/lang/Object;
.source "TextSelectorForHtmlComposer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/TextSelectorForHtmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePopupMenu"
.end annotation


# instance fields
.field private mClipBoard:Landroid/widget/TextView;

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContext:Landroid/content/Context;

.field public mCursorControllerParent:Landroid/webkit/HtmlComposerView;

.field private mPaste:Landroid/widget/TextView;

.field private final mPasteViewLayouts:[I

.field private final mPasteViews:[Landroid/view/View;

.field private mSideClipboard:Landroid/widget/TextView;

.field private mSidePaste:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/TextSelectorForHtmlComposer;


# direct methods
.method public constructor <init>(Lcom/android/email/TextSelectorForHtmlComposer;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    iput-object p1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$300(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$400(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$500(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$600(Lcom/android/email/TextSelectorForHtmlComposer;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViewLayouts:[I

    iput-object p2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private updateContent(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x2

    invoke-direct {p0, p1}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->viewIndex(Z)I

    move-result v4

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aget-object v3, v5, v4

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViewLayouts:[I

    aget v1, v5, v4

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v5}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to inflate TextEdit paste window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPaste:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mClipBoard:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v3, v5, v4

    :cond_3
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSidePaste:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSideClipboard:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private viewIndex(Z)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mClipBoard:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSideClipboard:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    const v1, 0x102040a

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->hide()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mPaste:Landroid/widget/TextView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mSidePaste:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    goto :goto_0
.end method

.method positionAtCursor()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v10}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/webkit/HtmlComposerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v10, 0x2

    new-array v9, v10, [I

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v10, v9}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    aget v10, v9, v13

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    div-int/lit8 v11, v5, 0x2

    sub-int v6, v10, v11

    aget v10, v9, v12

    iget v11, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    sub-int v7, v10, v4

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gez v6, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v11, p0, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v11}, Lcom/android/email/TextSelectorForHtmlComposer;->access$700(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v11

    invoke-virtual {v10, v11, v13, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_1
    add-int v10, v6, v5

    if-ge v8, v10, :cond_0

    sub-int v6, v8, v5

    goto :goto_0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->updateContent(Z)V

    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->positionAtCursor()V

    return-void
.end method
