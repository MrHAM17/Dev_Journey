package com.jusplaymoviestreamingapp.app.modules.language.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowLanguageBinding
import com.jusplaymoviestreamingapp.app.modules.language.`data`.model.LanguageRowModel
import kotlin.Int
import kotlin.collections.List

class LanguageAdapter(
  var list: List<LanguageRowModel>
) : RecyclerView.Adapter<LanguageAdapter.RowLanguageVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLanguageVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_language,parent,false)
    return RowLanguageVH(view)
  }

  override fun onBindViewHolder(holder: RowLanguageVH, position: Int) {
    val languageRowModel = LanguageRowModel()
    // TODO uncomment following line after integration with data source
    // val languageRowModel = list[position]
    holder.binding.languageRowModel = languageRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LanguageRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: LanguageRowModel
    ) {
    }
  }

  inner class RowLanguageVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLanguageBinding = RowLanguageBinding.bind(itemView)
  }
}
