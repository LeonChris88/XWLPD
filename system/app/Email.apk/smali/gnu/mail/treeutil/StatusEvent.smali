.class public Lgnu/mail/treeutil/StatusEvent;
.super Ljava/util/EventObject;
.source "StatusEvent.java"


# instance fields
.field protected maximum:I

.field protected minimum:I

.field protected operation:Ljava/lang/String;

.field protected type:I

.field protected value:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p2, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    iput-object p3, p0, Lgnu/mail/treeutil/StatusEvent;->operation:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;III)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    iput v0, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p2, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    iput-object p3, p0, Lgnu/mail/treeutil/StatusEvent;->operation:Ljava/lang/String;

    iput p4, p0, Lgnu/mail/treeutil/StatusEvent;->minimum:I

    iput p5, p0, Lgnu/mail/treeutil/StatusEvent;->maximum:I

    iput p6, p0, Lgnu/mail/treeutil/StatusEvent;->value:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lgnu/mail/treeutil/StatusEvent;->type:I

    return v0
.end method
