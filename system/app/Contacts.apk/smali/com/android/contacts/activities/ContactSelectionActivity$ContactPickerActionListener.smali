.class final Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method private launchAddToContactDialog(Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCreateNewContactAction(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v0, :cond_0

    const-string v2, "ringtone_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ringtone_uri"

    const-string v3, "ringtone_uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContactSelectionActivity"

    const-string v2, "[Interaction] ringtone_uri"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "custom_ringtone"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const v1, 0x7f0a0039

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->launchAddToContactDialog(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const-class v3, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$400(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method
