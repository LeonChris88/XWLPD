.class public Lorg/apache/commons/httpclient/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;,
        Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
    }
.end annotation


# static fields
.field protected static final IPv4address:Ljava/util/BitSet; = null

.field protected static final IPv6address:Ljava/util/BitSet; = null

.field protected static final IPv6reference:Ljava/util/BitSet; = null

.field protected static final URI_reference:Ljava/util/BitSet; = null

.field protected static final abs_path:Ljava/util/BitSet; = null

.field protected static final absoluteURI:Ljava/util/BitSet; = null

.field public static final allowed_IPv6reference:Ljava/util/BitSet; = null

.field public static final allowed_abs_path:Ljava/util/BitSet; = null

.field public static final allowed_authority:Ljava/util/BitSet; = null

.field public static final allowed_fragment:Ljava/util/BitSet; = null

.field public static final allowed_host:Ljava/util/BitSet; = null

.field public static final allowed_opaque_part:Ljava/util/BitSet; = null

.field public static final allowed_query:Ljava/util/BitSet; = null

.field public static final allowed_reg_name:Ljava/util/BitSet; = null

.field public static final allowed_rel_path:Ljava/util/BitSet; = null

.field public static final allowed_userinfo:Ljava/util/BitSet; = null

.field public static final allowed_within_authority:Ljava/util/BitSet; = null

.field public static final allowed_within_path:Ljava/util/BitSet; = null

.field public static final allowed_within_query:Ljava/util/BitSet; = null

.field public static final allowed_within_userinfo:Ljava/util/BitSet; = null

.field protected static final alpha:Ljava/util/BitSet; = null

.field protected static final alphanum:Ljava/util/BitSet; = null

.field protected static final authority:Ljava/util/BitSet; = null

.field public static final control:Ljava/util/BitSet; = null

.field protected static defaultDocumentCharset:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static defaultProtocolCharset:Ljava/lang/String; = null

.field public static final delims:Ljava/util/BitSet; = null

.field protected static final digit:Ljava/util/BitSet; = null

.field public static final disallowed_opaque_part:Ljava/util/BitSet; = null

.field public static final disallowed_rel_path:Ljava/util/BitSet; = null

.field protected static final domainlabel:Ljava/util/BitSet; = null

.field protected static final escaped:Ljava/util/BitSet; = null

.field protected static final fragment:Ljava/util/BitSet; = null

.field protected static final hex:Ljava/util/BitSet; = null

.field protected static final hier_part:Ljava/util/BitSet; = null

.field protected static final host:Ljava/util/BitSet; = null

.field protected static final hostname:Ljava/util/BitSet; = null

.field protected static final hostport:Ljava/util/BitSet; = null

.field protected static final mark:Ljava/util/BitSet; = null

.field protected static final net_path:Ljava/util/BitSet; = null

.field protected static final opaque_part:Ljava/util/BitSet; = null

.field protected static final param:Ljava/util/BitSet; = null

.field protected static final path:Ljava/util/BitSet; = null

.field protected static final path_segments:Ljava/util/BitSet; = null

.field protected static final pchar:Ljava/util/BitSet; = null

.field protected static final percent:Ljava/util/BitSet; = null

.field protected static final port:Ljava/util/BitSet; = null

.field protected static final query:Ljava/util/BitSet; = null

.field protected static final reg_name:Ljava/util/BitSet; = null

.field protected static final rel_path:Ljava/util/BitSet; = null

.field protected static final rel_segment:Ljava/util/BitSet; = null

.field protected static final relativeURI:Ljava/util/BitSet; = null

.field protected static final reserved:Ljava/util/BitSet; = null

.field protected static final rootPath:[C = null

.field protected static final scheme:Ljava/util/BitSet; = null

.field protected static final segment:Ljava/util/BitSet; = null

.field static final serialVersionUID:J = 0x864831aad836c36L

.field protected static final server:Ljava/util/BitSet;

.field public static final space:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field public static final unwise:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# instance fields
.field protected _authority:[C

.field protected _fragment:[C

.field protected _host:[C

.field protected _is_IPv4address:Z

.field protected _is_IPv6reference:Z

.field protected _is_abs_path:Z

.field protected _is_hier_part:Z

.field protected _is_hostname:Z

.field protected _is_net_path:Z

.field protected _is_opaque_part:Z

.field protected _is_reg_name:Z

.field protected _is_rel_path:Z

.field protected _is_server:Z

.field protected _opaque:[C

.field protected _path:[C

.field protected _port:I

.field protected _query:[C

.field protected _scheme:[C

.field protected _uri:[C

.field protected _userinfo:[C

.field protected hash:I

.field protected protocolCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x3a

    const/16 v8, 0x2b

    const/16 v7, 0x3b

    const/16 v6, 0x25

    const/16 v5, 0x100

    const-string v2, "UTF-8"

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->getCharset(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    :cond_0
    :try_start_0
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    const/16 v0, 0x30

    :goto_1
    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    sget-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x41

    :goto_3
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_4

    sget-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 v0, 0x61

    :goto_4
    const/16 v2, 0x66

    if-gt v0, v2, :cond_5

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x41

    :goto_5
    const/16 v2, 0x46

    if-gt v0, v2, :cond_6

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->domainlabel:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_7

    sget-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    sget-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, v0, Lorg/apache/commons/httpclient/URI;->_port:I

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getRawAuthority()[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lorg/apache/commons/httpclient/URI;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected equals([C[C)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-char v3, p1, v0

    aget-char v4, p2, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getEscapedURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getRawAuthority()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
