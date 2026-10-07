.class Lorg/apache/harmony/awt/internal/nls/Messages$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/awt/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$loader:Ljava/lang/ClassLoader;

.field private final synthetic val$locale:Ljava/util/Locale;

.field private final synthetic val$resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    .line 224
    iget-object v2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 223
    :goto_0
    invoke-static {v0, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
