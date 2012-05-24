.class Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;
.super Landroid/widget/CursorAdapter;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UNCSearchResultsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final COLUMN_ACCOUNT_KEY:I

.field public final COLUMN_CONTENT_TYPE:I

.field public final COLUMN_DISPLAY_NAME:I

.field public final COLUMN_FLAG_FOLDER:I

.field public final COLUMN_ID:I

.field public final COLUMN_LINK_ID:I

.field public final COLUMN_MAILBOX_KEY:I

.field public final IS_FOLDER:I

.field public final IS_NOTFOLDER:I

.field public final PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "linkId"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "isFolder"

    aput-object v1, v0, v6

    const-string v1, "contentType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->PROJECTION:[Ljava/lang/String;

    iput v3, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_ID:I

    iput v4, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_LINK_ID:I

    iput v5, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_DISPLAY_NAME:I

    iput v6, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_FLAG_FOLDER:I

    iput v7, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_CONTENT_TYPE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_MAILBOX_KEY:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->COLUMN_ACCOUNT_KEY:I

    iput v4, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->IS_FOLDER:I

    iput v3, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->IS_NOTFOLDER:I

    iput-object p2, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;

    invoke-direct {v4, p0, p1}, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;-><init>(Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;Landroid/view/View;)V

    if-eqz v1, :cond_0

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->folderDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->findExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "doc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "docx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->wordDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const-string v5, "xls"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "xlsx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->excelDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    const-string v5, "ppt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "pptx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pointDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_8
    const-string v5, "pdf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pdfDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_9
    const-string v5, "jpg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->jpgDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_a
    const-string v5, "gif"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->gifDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_b
    const-string v5, "bmp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->bmpDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "png"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pngDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "txt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->txtDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_e
    iget-object v5, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->unknownDrwable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method
