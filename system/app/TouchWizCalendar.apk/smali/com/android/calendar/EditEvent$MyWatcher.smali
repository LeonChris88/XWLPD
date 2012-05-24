.class Lcom/android/calendar/EditEvent$MyWatcher;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method private constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/EditEvent;Lcom/android/calendar/EditEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent$MyWatcher;-><init>(Lcom/android/calendar/EditEvent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 13

    if-lez p3, :cond_4

    if-nez p4, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, p2, -0x1

    :goto_0
    if-ltz v8, :cond_0

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v11, 0x2c

    if-ne v2, v11, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_0

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EditEvent$Attendee;

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, v1, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    and-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_1

    move v5, v8

    move v6, p2

    move-object v4, v1

    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    new-instance v12, Lcom/android/calendar/EditEvent$MyWatcher$1;

    invoke-direct {v12, p0, v5, v6, v4}, Lcom/android/calendar/EditEvent$MyWatcher$1;-><init>(Lcom/android/calendar/EditEvent$MyWatcher;IILcom/android/calendar/EditEvent$Attendee;)V

    invoke-virtual {v11, v12}, Lcom/android/calendar/EnterActionMultiEdit;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_2

    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v11, 0x20

    if-ne v2, v11, :cond_2

    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/calendar/EnterActionMultiEdit;->getEditableText()Landroid/text/Editable;

    move-result-object v11

    const-string v12, ","

    invoke-interface {v11, p2, p2, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/calendar/EnterActionMultiEdit;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/calendar/EnterActionMultiEdit;->setSelection(I)V

    goto :goto_1
.end method
