.class public Lnet/lingala/zip4j/model/CentralDirectory;
.super Ljava/lang/Object;
.source "CentralDirectory.java"


# instance fields
.field private fileHeaders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileHeaders()Ljava/util/ArrayList;
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFileHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    .line 33
    return-void
.end method
