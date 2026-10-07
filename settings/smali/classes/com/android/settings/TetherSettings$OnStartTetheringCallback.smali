.class final Lcom/android/settings/TetherSettings$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final mTetherSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/TetherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/android/settings/TetherSettings;

    .line 450
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 451
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    .line 452
    return-void
.end method

.method private update()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TetherSettings;

    .line 466
    .local v0, "settings":Lcom/android/settings/TetherSettings;
    if-eqz v0, :cond_0

    .line 467
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)V

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;->update()V

    .line 462
    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;->update()V

    .line 457
    return-void
.end method
