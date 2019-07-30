// Copyright (c) 2013 The Chromium Embedded Framework Authors. All rights
// reserved. Use of this source code is governed by a BSD-style license that
// can be found in the LICENSE file.

// modified by Chen, Wenli on 2018/12/24 to integrate to GameEngineFromScratch

#include "simple_handler.hpp"

#include <windows.h>
#include <string>

#include "cef_browser.h"

using namespace My;

void SimpleHandler::PlatformTitleChange(CefRefPtr<CefBrowser> browser,
                                        const CefString& title) {
  CefWindowHandle hwnd = browser->GetHost()->GetWindowHandle();
  SetWindowTextW(hwnd, std::wstring(title).c_str());
}