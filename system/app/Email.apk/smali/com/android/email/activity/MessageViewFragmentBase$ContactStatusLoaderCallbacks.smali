.class Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactStatusLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

.field private mTriggered:Z


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/ContactStatusLoader;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v2, "email"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/ContactStatusLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x31

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v3, :cond_2

    :cond_0
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/email/activity/ContactStatusLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
