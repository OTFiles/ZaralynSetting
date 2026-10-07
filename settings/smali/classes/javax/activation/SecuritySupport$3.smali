.class Ljavax/activation/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .line 88
    const/4 v0, 0x0

    check-cast v0, [Ljava/net/URL;

    .line 90
    .local v0, "ret":[Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "v":Ljava/util/List;
    iget-object v2, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iget-object v3, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 92
    .local v2, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 94
    .local v3, "url":Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3
    goto :goto_0

    .line 97
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/URL;

    move-object v0, v3

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/URL;

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_2

    .line 102
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    goto :goto_2

    .line 101
    :catch_1
    move-exception v1

    .line 103
    :cond_3
    :goto_2
    return-object v0
.end method
