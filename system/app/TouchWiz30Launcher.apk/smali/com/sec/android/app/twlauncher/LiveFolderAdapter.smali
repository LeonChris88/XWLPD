.class Lcom/sec/android/app/twlauncher/LiveFolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCustomIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsList:Z

.field private final mLauncher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LiveFolderInfo;Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget v1, p2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startManagingCursor(Landroid/database/Cursor;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    if-eq v8, v9, :cond_0

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    :cond_1
    if-nez v2, :cond_2

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const-string v8, "LiveFOlderAdapter"

    const-string v9, "Failed to decode bitmap data for live folder icon"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    if-eq v8, v9, :cond_2

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    if-eq v8, v9, :cond_2

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v8, p3, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method static query(Landroid/content/Context;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/16 v7, 0x8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->idIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-direct {p0, p2, p3, v2}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    if-nez v6, :cond_0

    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v3, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    if-eq v5, v11, :cond_6

    :try_start_0
    iget v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    if-eqz v3, :cond_2

    move v1, v4

    :goto_2
    iget-object v8, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_1

    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    if-eq v6, v11, :cond_5

    iget v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_3

    :cond_4
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iput-boolean v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method cleanup()V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;-><init>()V

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mIsList:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->idIndex:I

    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    const-string v2, "description"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    const-string v2, "intent"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    const-string v2, "icon_bitmap"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    const-string v2, "icon_resource"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    const-string v2, "icon_package"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method
