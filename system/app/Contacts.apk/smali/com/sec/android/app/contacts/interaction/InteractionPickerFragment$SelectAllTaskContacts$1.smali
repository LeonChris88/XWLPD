.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1102(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    :cond_0
    return-void
.end method
