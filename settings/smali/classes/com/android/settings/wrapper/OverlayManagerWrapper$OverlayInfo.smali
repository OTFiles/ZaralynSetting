.class public Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
.super Ljava/lang/Object;
.source "OverlayManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wrapper/OverlayManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayInfo"
.end annotation


# instance fields
.field public final category:Ljava/lang/String;

.field private final mEnabled:Z

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Landroid/content/om/OverlayInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/om/OverlayInfo;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->mEnabled:Z

    .line 96
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->category:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    .line 98
    iget v0, p1, Landroid/content/om/OverlayInfo;->priority:I

    iput v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->priority:I

    .line 99
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->mEnabled:Z

    return v0
.end method
