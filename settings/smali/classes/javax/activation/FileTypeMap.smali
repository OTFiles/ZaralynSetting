.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "FileTypeMap.java"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .locals 1

    .line 127
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 129
    :cond_0
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-object v0
.end method

.method public static setDefaultFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .locals 4
    .param p0, "map"    # Ljavax/activation/FileTypeMap;

    .line 99
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 100
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/SecurityException;
    const-class v2, Ljavax/activation/FileTypeMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 108
    if-ne v2, v3, :cond_0

    .end local v1
    goto :goto_0

    .line 110
    .restart local v1
    :cond_0
    throw v1

    .line 113
    .end local v1
    :cond_1
    :goto_0
    sput-object p0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 114
    return-void
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method
