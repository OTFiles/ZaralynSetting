.class Lorg/apache/harmony/awt/ContextStorage$ContextLock;
.super Ljava/lang/Object;
.source "ContextStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/awt/ContextStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextLock"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/awt/ContextStorage;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/awt/ContextStorage;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/awt/ContextStorage$ContextLock;->this$0:Lorg/apache/harmony/awt/ContextStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/awt/ContextStorage;Lorg/apache/harmony/awt/ContextStorage$ContextLock;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/ContextStorage$ContextLock;-><init>(Lorg/apache/harmony/awt/ContextStorage;)V

    return-void
.end method
