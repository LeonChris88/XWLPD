.class Lcom/android/contacts/quickcontact/QuickContactActivity$7;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V
    .locals 2

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$7;ZLcom/android/contacts/quickcontact/Action;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOutsideClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
