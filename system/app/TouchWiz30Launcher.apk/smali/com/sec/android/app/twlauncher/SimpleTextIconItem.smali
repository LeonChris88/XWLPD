.class public Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
.super Ljava/lang/Object;
.source "SimpleTextIconItem.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;


# instance fields
.field private final mEnabled:Z

.field private final mId:I

.field private final mImage:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    const-string v0, "???"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-boolean p5, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    return-void

    :cond_0
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIIZ)V

    return-void
.end method


# virtual methods
.method public getId(I)J
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    return-void
.end method
