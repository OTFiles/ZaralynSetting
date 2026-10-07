.class public Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
.super Landroid/os/AsyncTask;
.source "SystemPropPoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/development/SystemPropPoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PokerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->listServices()[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "services":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    const-string v2, "SystemPropPoker"

    const-string v3, "There are no services, how odd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v1

    .line 80
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 81
    .local v5, "service":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 82
    .local v6, "obj":Landroid/os/IBinder;
    if-eqz v6, :cond_1

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 85
    .local v7, "data":Landroid/os/Parcel;
    const v8, 0x5f535052

    :try_start_0
    invoke-interface {v6, v8, v7, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    .line 88
    :catch_0
    move-exception v8

    .line 89
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "SystemPropPoker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Someone wrote a bad service \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' that doesn\'t like to be poked"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8
    goto :goto_2

    .line 86
    :catch_1
    move-exception v8

    goto :goto_1

    .line 92
    :goto_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 80
    .end local v5
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return-object v1
.end method

.method listServices()[Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
