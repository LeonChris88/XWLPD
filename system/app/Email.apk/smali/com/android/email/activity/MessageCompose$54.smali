.class Lcom/android/email/activity/MessageCompose$54;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onSpellCheckAddWord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$54;->val$word:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$13000()Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13002(Lcom/android/email/activity/utils/spellcheck/UserDictionary;)Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$13000()Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$54;->val$word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->addWord(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$13000()Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->commit()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$12902(J)J

    return-void
.end method
