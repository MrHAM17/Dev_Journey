package com.jusplaymoviestreamingapp.app.modules.searchresult.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowSearchresultBinding
import com.jusplaymoviestreamingapp.app.modules.searchresult.`data`.model.SearchresultRowModel
import kotlin.Int
import kotlin.collections.List

class SearchResultAdapter(
  var list: List<SearchresultRowModel>
) : RecyclerView.Adapter<SearchResultAdapter.RowSearchresultVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresult,parent,false)
    return RowSearchresultVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultVH, position: Int) {
    val searchresultRowModel = SearchresultRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultRowModel = list[position]
    holder.binding.searchresultRowModel = searchresultRowModel
  }

  override fun getItemCount(): Int = 12
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultRowModel>) {
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
      item: SearchresultRowModel
    ) {
    }
  }

  inner class RowSearchresultVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultBinding = RowSearchresultBinding.bind(itemView)
  }
}
