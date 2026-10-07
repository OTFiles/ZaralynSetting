.class public Lcom/android/settings/gifmanager/GifSpanInfo;
.super Ljava/lang/Object;
.source "GifSpanInfo.java"


# instance fields
.field public currentFrameIndex:I

.field public frameCount:I

.field public frameHelper:Lcom/android/settings/gifmanager/GifOpenHelper;

.field public mapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gifmanager/GifSpanInfo;->mapList:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gifmanager/GifSpanInfo;->currentFrameIndex:I

    iput v0, p0, Lcom/android/settings/gifmanager/GifSpanInfo;->frameCount:I

    .line 18
    return-void
.end method
