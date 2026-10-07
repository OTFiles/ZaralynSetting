.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;

    invoke-direct {v0}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;-><init>()V

    sput-object v0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildSliceKeywords$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
