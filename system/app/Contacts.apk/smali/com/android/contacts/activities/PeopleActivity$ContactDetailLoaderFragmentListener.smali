.class Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;-><init>(Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
