.class Lcom/android/email/activity/MessageCompose$17;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v10

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v6

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v5

    sub-int v11, p6, p5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const-string v11, ";"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3208(Lcom/android/email/activity/MessageCompose;)I

    :goto_1
    sub-int v11, p3, p6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    move/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    move/from16 v0, p6

    invoke-interface {p1, v11, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3202(Lcom/android/email/activity/MessageCompose;I)I

    goto :goto_1

    :cond_2
    if-lez p5, :cond_6

    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_3

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3200(Lcom/android/email/activity/MessageCompose;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ";"

    add-int/lit8 v12, p5, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    const-string v11, ";"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    if-eqz v10, :cond_8

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3300(Lcom/android/email/activity/MessageCompose;Z)Z

    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_c

    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3600(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    move-object v4, v3

    array-length v8, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_c

    aget-object v2, v4, v7

    if-eqz v10, :cond_a

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_9

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_6

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3500(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_7

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
