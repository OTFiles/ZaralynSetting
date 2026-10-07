.class public Lcom/sun/activation/registries/LogSupport;
.super Ljava/lang/Object;
.source "LogSupport.java"


# static fields
.field private static debug:Z

.field private static final level:Ljava/util/logging/Level;

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    .line 52
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    .line 56
    :try_start_0
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 60
    :goto_0
    const-string v0, "javax.activation"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static isLoggable()Z
    .locals 2

    .line 83
    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 77
    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "; Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :cond_0
    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method
