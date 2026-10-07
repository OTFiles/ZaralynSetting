.class public Lcom/readboy/store/AppUpdate/ApUpdateFactory;
.super Ljava/lang/Object;
.source "ApUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefaultCheck()Lcom/readboy/store/AppUpdate/CheckImpl;
    .locals 1

    .line 10
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;-><init>()V

    return-object v0
.end method

.method public createSpecifyCheck(Lcom/readboy/store/AppUpdate/ApInfo;)Lcom/readboy/store/AppUpdate/CheckImpl;
    .locals 1
    .param p1, "info"    # Lcom/readboy/store/AppUpdate/ApInfo;

    .line 27
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {v0, p1}, Lcom/readboy/store/AppUpdate/CheckHelper;-><init>(Lcom/readboy/store/AppUpdate/ApInfo;)V

    .line 32
    .local v0, "impl":Lcom/readboy/store/AppUpdate/CheckImpl;
    invoke-interface {v0, p1}, Lcom/readboy/store/AppUpdate/CheckImpl;->initApUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;)V

    .line 33
    return-object v0
.end method

.method public createSpecifyCheck(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/CheckImpl;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;-><init>()V

    .line 20
    .local v0, "impl":Lcom/readboy/store/AppUpdate/CheckImpl;
    new-instance v1, Lcom/readboy/store/AppUpdate/ApInfo;

    invoke-direct {v1}, Lcom/readboy/store/AppUpdate/ApInfo;-><init>()V

    .line 21
    .local v1, "info":Lcom/readboy/store/AppUpdate/ApInfo;
    invoke-virtual {v1, p1}, Lcom/readboy/store/AppUpdate/ApInfo;->setPackageName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 22
    invoke-interface {v0, v1}, Lcom/readboy/store/AppUpdate/CheckImpl;->initApUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;)V

    .line 23
    return-object v0
.end method

.method public createUpdateBackgroundCheck()Lcom/readboy/store/AppUpdate/CheckImpl;
    .locals 2

    .line 15
    new-instance v0, Lcom/readboy/store/AppUpdate/CheckHelper;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/CheckHelper;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/readboy/store/AppUpdate/CheckHelper;->setDoBackground(I)Lcom/readboy/store/AppUpdate/CheckImpl;

    move-result-object v0

    return-object v0
.end method
