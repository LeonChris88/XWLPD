.class public final Lgnu/inet/gopher/DirectoryEntry;
.super Ljava/lang/Object;
.source "DirectoryEntry.java"


# instance fields
.field final hostname:Ljava/lang/String;

.field final port:I

.field final selector:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgnu/inet/gopher/DirectoryEntry;->type:I

    iput-object p2, p0, Lgnu/inet/gopher/DirectoryEntry;->title:Ljava/lang/String;

    iput-object p3, p0, Lgnu/inet/gopher/DirectoryEntry;->selector:Ljava/lang/String;

    iput-object p4, p0, Lgnu/inet/gopher/DirectoryEntry;->hostname:Ljava/lang/String;

    iput p5, p0, Lgnu/inet/gopher/DirectoryEntry;->port:I

    return-void
.end method
