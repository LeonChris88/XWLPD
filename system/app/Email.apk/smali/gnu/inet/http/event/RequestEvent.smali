.class public Lgnu/inet/http/event/RequestEvent;
.super Ljava/util/EventObject;
.source "RequestEvent.java"


# instance fields
.field protected request:Lgnu/inet/http/Request;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILgnu/inet/http/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lgnu/inet/http/event/RequestEvent;->type:I

    iput-object p3, p0, Lgnu/inet/http/event/RequestEvent;->request:Lgnu/inet/http/Request;

    return-void
.end method
