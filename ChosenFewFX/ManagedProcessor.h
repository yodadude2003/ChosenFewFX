#pragma once
#include <vcclr.h>
#include "ofxsMultiThread.h"
#include "../include/ofxsProcessing.H"
namespace ChosenFewFX {
	class ManagedProcessor : public OFX::ImageProcessor {
	protected:
		gcroot<NET::Plugin^> _managedHandle;
	public:
		ManagedProcessor(OFX::ImageEffect &instance, NET::Plugin^ handle) : 
			OFX::ImageProcessor(instance), _managedHandle(handle) {}

		SkiaSharp::SKBitmap^ linkPixelsToManagedImage(OFX::Image *img);

		virtual void preProcess();
		virtual void multiThreadProcessImages(OfxRectI procWindow);
		virtual void postProcess();
	};
}
